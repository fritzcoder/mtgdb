require 'rubygems'
require 'mongo'
require 'sqlite3'
gem 'activerecord'
require 'active_record'
require 'mongo_mapper'
require 'open-uri'
require 'mechanize'
require 'nokogiri'

load 'card.rb'
load 'card_set.rb'
load 'sets.rb'

include Mongo

MongoMapper.connection = Mongo::Connection.new("localhost", 27017)
MongoMapper.database = "mtg"


def get_card_img(mvid)
  open("card_images/" + mvid.to_s + ".jpeg", 'wb') do |file|
    file << open("http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=" + 
    mvid.to_s + "&type=card").read
  end
end

def get_card_details(mvid)
  details = Hash.new
  agent = Mechanize.new
  page = agent.get("http://gatherer.wizards.com/Pages/Card/Details.aspx?multiverseid=" + 
  mvid.to_s)
  doc = Nokogiri::HTML( page.search('#ctl00_ctl00_ctl00_MainContent_SubContent_SubContent_numberRow').to_html)

  if doc.at("div.value") != nil 
    details["cardNumber"] = doc.at("div.value").content.to_i
  else 
    details["cardNumber"] = 0
  end  

  doc = Nokogiri::HTML( page.search('#ctl00_ctl00_ctl00_MainContent_SubContent_SubContent_ptRow').to_html)

  if doc.at("div.value") != nil 
    details["loyalty"] = doc.at("div.value").content.to_i
  else 
    details["loyalty"] = 0
  end

  doc = Nokogiri::HTML( page.search('#ctl00_ctl00_ctl00_MainContent_SubContent_SubContent_ArtistCredit').to_html)

  if doc.at("a") != nil 
    details["artist"] = doc.at("a").content
  else 
    details["artist"] = ""
  end

  doc = Nokogiri::HTML( page.search('#ctl00_ctl00_ctl00_MainContent_SubContent_SubContent_FlavorText').to_html)

  if doc.at("div.cardtextbox") != nil 
    flavor = ""
    doc.search("div.cardtextbox").each{ |x| flavor = flavor + " " + x.content }
    details["flavor"] = flavor
  else 
    details["flavor"] = ""
  end

  details
end

startdb = SQLite3::Database.new("cards.sqlite")
startdb.results_as_hash = true
startdb.execute( "select * from card" ) do |row|
  
   exists = Card.find(row['mvid'])
   # if exists
   #      Card.delete(row['mvid'])
   #    end
   if exists == nil
     card = Card.new
     card._id = row['mvid']
     details = get_card_details(card._id)
     card.setNumber = details["cardNumber"]
     card.artist = details["artist"]
     card.name = row['cardname']
     card.searchName = card.name.gsub(' ','').downcase
     card.description = row['cardtext']
     card.flavor = details["flavor"]
     cardset = row['cardset']
   
     #put them together
     if cardset == 'Magic: The Gathering-Commander'
       cardset = "Commander"
     end
   
     card.cardSetName = cardset
   
     types = row['cardtype'].split('-')
     card.type = types.count > 1 ? types[0].strip : types[0].strip
     card.subType = types.count > 1 ? types[1].strip : nil
     #row['cardtype'] #parse out subtype and loyalty points
     card.manaCost = row['manacost']
     card.power = row['power']  
     card.toughness = row['toughness']
   
     if card.type == "Planeswalker"
      card.loyalty = details["loyalty"]
      card.power = 0 
      card.toughness = 0
     else
       card.loyalty = 0
     end
   
     card.convertedManaCost = row['convertedmanacost']
   
     colors = []
     if row['isblue'] == 1
       colors.push('blue')
     end
  
     if row['isred'] == 1
        colors.push('red')
     end
   
     if row['isgreen'] == 1
        colors.push('green')
     end
   
     if row['isblack'] == 1
        colors.push('black')
     end
  
     if row['iswhite'] == 1
       colors.push('white')
     end
   
     if row['iscolorless'] == 1
       colors.push('None')
     end
   
     card.colors = colors
     card.rarity = row['rarity']
   
     if !File.exist?("card_images/" +  card._id.to_s + ".jpeg")
       get_card_img(card._id)
     end
   
     id = card.save
     print "Saved: " + card.name + "\n"
  else
        print "Exists: " + row['cardname'] + "\n"   
  end
end

#load sets

load_sets()



#get images 




