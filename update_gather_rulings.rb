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

def get_card_rulings(c)
  agent = Mechanize.new
  page = agent.get("http://gatherer.wizards.com/Pages/Card/Details.aspx?multiverseid=" + 
  c._id.to_s)
  doc = Nokogiri::HTML( page.search('#ctl00_ctl00_ctl00_MainContent_SubContent_SubContent_rulingsContainer/table').to_html)
  #puts doc
  c.rulings.clear
  c.save!
  rulings = []
  i = 1
  doc.search('tr').each do |tr|
    ruling_date = Date.strptime(tr.search("td")[0].text.strip, '%m/%d/%Y')
    ruling_text = tr.search("td")[1].text.strip
    ruling = Ruling.new
    ruling._id = i
    ruling.releasedAt = ruling_date.to_s
    ruling.rule =  ruling_text
    rulings.push(ruling)
    #puts "Date: " + ruling_date.to_s
    #puts "Text: " + ruling_text
    i = i + 1
  end
  
  if rulings != nil and rulings.length > 0
    c.rulings = rulings
    c.save!
    puts "Saved rulings: " + c.name
  end
end

Card.find_each(:order => :_id.desc) do |card|  
  if card != nil
    if !(card.class.method_defined? :rulings) or card.rulings.length == 0
     get_card_rulings(card)
    else
      puts "Card: " + card.id.to_s + " already has rulings loaded."
    end
  end
end
