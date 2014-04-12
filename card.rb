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
  key :cardSetId, String
  key :setNumber, Integer
  key :name, String
  key :searchName, String
  key :description, String
  key :flavor, String
  key :colors, Array
  key :manaCost, String
  key :convertedManaCost, Integer
  key :cardSetName, String
  key :type, String
  key :subType, String
  key :power, Integer
  key :toughness, Integer
  key :loyalty, Integer
  key :rarity, String
  key :artist, String
  key :token, Boolean
  key :releasedAt, String
  
  many :rulings
  many :formats
  #many :formats
  #key :card_set_id, String
  #belongs_to :card_set, :foreign_key => "cardSetId"
end

class Ruling
  include MongoMapper::EmbeddedDocument
  key :releasedAt, String
  key :rule, String
end

class Format
  include MongoMapper::EmbeddedDocument
  key :_id, Integer
  key :name, String
  key :legality, String
end