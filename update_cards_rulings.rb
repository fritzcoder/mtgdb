require 'rubygems'
require 'mongo'
require 'sqlite3'
gem 'activerecord'
require 'active_record'
require 'mongo_mapper'
require 'open-uri'
require 'mechanize'
require 'nokogiri'
require 'json'

load 'card.rb'
load 'card_set.rb'
#load 'sets.rb'

include Mongo

MongoMapper.connection = Mongo::Connection.new("localhost", 27017)
MongoMapper.database = "mtg"

sets = []
File.open("AllSets-x.json", "r").each do |object|
  sets = JSON.parse(object)
  sets.each do |set|
    cards = sets[set[0]]["cards"]
    
    cards.each do |card|
      update_card = Card.find(card["multiverseid"])
  
      if update_card != nil
        update_card.rulings.clear
        update_card.save!
        if card["rulings"] != nil
          i = 1
          card["rulings"].each do |ruling|
            update_card.rulings.build(:_id => i, :releasedAt => ruling["date"],
                :rule => ruling["text"])
            update_card.save!
            i = i + 1
          end
        end
      end
    end
  end
end