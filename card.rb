require 'rubygems'
require 'mongo'
gem 'activerecord'
require 'active_record'
require 'mongo_mapper'
require 'open-uri'

include Mongo

class Card
  include MongoMapper::Document
  key :_id, Integer
  key :set_number, Integer
  key :name, String
  key :description, String
  key :flavor, String
  key :colors, Array
  key :manacost, String
  key :convertedmanacost, Integer
  key :card_set_name, String
  key :type, String
  key :subtype, String
  key :power, Integer
  key :toughness, Integer
  key :loyalty, Integer
  key :rarity, String
  key :artist, String
  key :released_at, Time
  #key :card_set_id, String
  belongs_to :card_set
end