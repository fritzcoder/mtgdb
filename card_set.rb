require 'rubygems'
require 'mongo'
gem 'activerecord'
require 'active_record'
require 'mongo_mapper'
require 'open-uri'

include Mongo

class CardSet
	include MongoMapper::Document
	key :_id, String
	key :name, String
	key :block, String
	key :releasedAt, Time
	key :common, Integer
	key :uncommon, Integer
	key :rare, Integer
	key :mythicRare, Integer
	key :basicLand, Integer
	key :other, Integer
	key :description, String
	key :wikipedia, String
	key :cardIds, Array
  #many :cards#, :in => :card_ids
  #uncommenting in allows for :car_ids to be populated, however mongomapper
  #will not reference the cardset in the Card objects
end