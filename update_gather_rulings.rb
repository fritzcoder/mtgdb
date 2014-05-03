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
#load 'sets.rb'

include Mongo

MongoMapper.connection = Mongo::Connection.new("localhost", 27017)
MongoMapper.database = "mtg"

def get_card_rulings(c)
  agent = Mechanize.new
  page = agent.get("http://gatherer.wizards.com/Pages/Card/Details.aspx?multiverseid=" + 
  c._id.to_s)
  doc = Nokogiri::HTML( page.search('ctl00_ctl00_ctl00_MainContent_SubContent_SubContent_rulingsContainer')[1].to_html)

  table = doc
  
  puts doc
  #c.formats.clear
  #c.save!
  #formats = []
  #i = 1
  # table.search('tr').each do |tr|
  #       next if (tr['class'] == 'headerRow')
  #       format = Format.new
  #       format.name = tr.search("td").first.text.strip
  #       if format.name == "This card is not playable in any formats."
  #          format.legality = ""
  #       else
  #         format.legality = tr.search("td")[1].text.strip
  #       end
  # 
  #       format._id = i
  #       
  #       formats.push(format)
  #       puts format.name
  #       puts format.legality
  #       i = i + 1
  #   end
  #   c.formats = formats
  #   c.save!
  #   puts "Saved formats: " + c.name
end

# startdb = SQLite3::Database.new("cards.sqlite")
# startdb.results_as_hash = true
# startdb.execute( "select * from card" ) do |row|
  
   #card = Card.find(row['mvid'])
   card = Card.find(1)
   get_card_rulings(card)
   
   if card != nil
     if !(card.class.method_defined? :rulings) or card.rulings.length == 0
       #puts row['mvid'] 
       get_card_rulings(card)
     else
       puts "skip"
     end
   end
#end
