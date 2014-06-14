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

Card.find_each(:order => :_id.desc) do |card|  
    card.searchName = card.name.gsub(' ','').downcase.gsub(/[^0-9a-z]/i, '')
    card.save
    puts "updated: " + card.name
end

