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

startdb = SQLite3::Database.new("cards.sqlite")
startdb.results_as_hash = true
startdb.execute( "select * from card" ) do |row|
  card = Card.find(row['mvid'])
  
  if card
    card.searchName = card.name.gsub(' ','').downcase.gsub(/[^0-9a-z]/i, '')
    card.save
    puts "updated: " + card.name
  end
  
end

