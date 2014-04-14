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

include Mongo

MongoMapper.connection = Mongo::Connection.new("localhost", 27017)
MongoMapper.database = "mtg"

tokens = [190199,159048,159047,159056,197937,197936,197261,201842,201843,209163,207998,209162]

promos = [47784,47788,47785,47786,47789,47787,49056,83064,84583,84073,83104,94912,94911,94910,83075,
  94914]
  
tokens.each do |c|
  card = Card.find(c)
  card.token = true
  card.save
end

promos.each do |c|
  card = Card.find(c)
  card.promo = true
  card.save
end


