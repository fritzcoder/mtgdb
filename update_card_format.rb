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

def get_card_formats(c)
  agent = Mechanize.new
  page = agent.get("http://gatherer.wizards.com/Pages/Card/Printings.aspx?multiverseid=" + 
  c._id.to_s)
  doc = Nokogiri::HTML( page.search('.cardList')[1].to_html)

  table = doc
  c.formats.clear
  c.save!
  formats = []
  table.search('tr').each do |tr|
      next if (tr['class'] == 'headerRow')
      formats.push(tr.search("td").first.text.strip)
  end
  c.formats = formats
  c.save!
  puts "Saved formats: " + c.name
end

startdb = SQLite3::Database.new("cards.sqlite")
startdb.results_as_hash = true
startdb.execute( "select * from card" ) do |row|
  
   card = Card.find(row['mvid'])
   
   if card.formats.length == 0 
     get_card_formats(card)
   end
end
