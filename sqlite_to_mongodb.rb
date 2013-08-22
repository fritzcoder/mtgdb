require 'rubygems'
require 'mongo'
require 'sqlite3'
gem 'activerecord'
require 'active_record'
require 'mongo_mapper'
require 'open-uri'

include Mongo

MongoMapper.connection = Mongo::Connection.new("localhost", 27017)
MongoMapper.database = "mtg"

class Card
  include MongoMapper::Document
  key :_id, String
  key :name, String
  key :description, String
  key :colors, Array
  key :manacost, String
  key :convertedmanacost, Integer
  key :card_set, String
  key :type, String
  key :subtype, String
  key :power, Integer
  key :toughness, Integer
  key :loyalty, Integer
  key :rarity, String
  key :artist, String
  key :card_released_at, Time
  key :created_at, Time
  key :modified_at, Time
  key :card_set_id, String
end

def get_card_img(mvid)
  open("card_images/" + mvid.to_s + ".jpeg", 'wb') do |file|
    file << open("http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=" + 
    mvid.to_s + "&type=card").read
  end
end

startdb = SQLite3::Database.new("cards.sqlite")

startdb.results_as_hash = true
startdb.execute( "select * from card" ) do |row|
   card = Card.new
   card._id = row['mvid']
   card.name = row['cardname']
   card.description = row['cardtext']
   card.card_set = row['cardset']
   types = row['cardtype'].split('-')
   card.type = types.count > 1 ? types[0].strip : types[0].strip
   card.subtype = types.count > 1 ? types[1].strip : nil
   #row['cardtype'] #parse out subtype and loyalty points
   card.manacost = row['manacost']
   card.loyalty = row['cardtype'][/\(.*?\)/]
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
   
   #sleep 0.5
   
end



#get images 




