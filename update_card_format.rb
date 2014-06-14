require 'rubygems'
require 'mongo'
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

def get_card_formats(c)
  agent = Mechanize.new
  page = agent.get("http://gatherer.wizards.com/Pages/Card/Printings.aspx?multiverseid=" + 
  c._id.to_s)
  doc = Nokogiri::HTML( page.search('.cardList')[1].to_html)

  table = doc
  c.formats.clear
  c.save!
  formats = []
  i = 1
  table.search('tr').each do |tr|
      next if (tr['class'] == 'headerRow')
      format = Format.new
      format.name = tr.search("td").first.text.strip
      if format.name == "This card is not playable in any formats."
	       format.legality = ""
      else
        format.legality = tr.search("td")[1].text.strip
      end

      format._id = i
      
      formats.push(format)
      puts format.name
      puts format.legality
      i = i + 1
  end
  c.formats = formats
  c.save!
  puts "Saved formats: " + c.name
end

Card.find_each(:order => :_id.desc) do |card|  
   if card.formats.length == 0
     get_card_formats(card)
   else
     puts "Card " + card._id.to_s + " already has formats loaded."
   end
end
