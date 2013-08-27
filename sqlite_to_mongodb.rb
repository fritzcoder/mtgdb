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
  agent = Mechanize.new
  page = agent.get("http://gatherer.wizards.com/Pages/Card/Details.aspx?multiverseid=" + mvid.to_s)
doc = Nokogiri::HTML( page.search('#ctl00_ctl00_ctl00_MainContent_SubContent_SubContent_numberRow').to_html)

if doc.at("div.value") != nil 
    card_number = doc.at("div.value").content.to_i
else 
    card_number = 0
end  

card_number
end

#this could be done inside get_card_details to save a page hit
#for now I wanted to keep the logic seprate as it is only an additional
#72 hits
def get_card_loyalty(mvid)
  agent = Mechanize.new
  page = agent.get("http://gatherer.wizards.com/Pages/Card/Details.aspx?multiverseid=" + mvid.to_s)
doc = Nokogiri::HTML( page.search('#ctl00_ctl00_ctl00_MainContent_SubContent_SubContent_ptRow').to_html)

if doc.at("div.value") != nil 
    loyalty = doc.at("div.value").content.to_i
else 
    loyalty = 0
end  

loyalty
  
end

startdb = SQLite3::Database.new("cards.sqlite")
startdb.results_as_hash = true
startdb.execute( "select * from card" ) do |row|
   card = Card.new
   card._id = row['mvid']
   card.card_set_number = get_card_details(card._id)
   card.name = row['cardname']
   card.description = row['cardtext']
   cardset = row['cardset']
   #put them together
   if cardset == 'Time Spiral "TimeShifted"'
     cardset = "Time Spiral"
   elsif cardset == 'Magic: The Gathering-Commander'
     cardset = "Commander"
   end
   
   card.card_set_name = cardset
   
   types = row['cardtype'].split('-')
   card.type = types.count > 1 ? types[0].strip : types[0].strip
   card.subtype = types.count > 1 ? types[1].strip : nil
   #row['cardtype'] #parse out subtype and loyalty points
   card.manacost = row['manacost']
   
   if card.type == "Planeswalker"
     card.loyalty = get_card_loyalty(card._id)
   else
     card.loyalty = 0
   end
   
   card.convertedmanacost = row['convertedmanacost']
   card.power = row['power']  
   card.toughness = row['toughness']
   
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
   
   #sleep 0.5
end



#get images 




