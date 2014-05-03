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

def set_card_number(card_set)
  index = 1
  card_set.each do |c|
    c.setNumber = index
    puts ("updated set number: " + c.name)
    c.save
    index = index + 1
  end
end

#sets without card numbers will be given one 
cards = Card.all(:cardSetId => 'ALL', :order => :name.asc)
set_card_number(cards)

cards = Card.all(:cardSetId => 'ATQ', :order => :name.asc)
set_card_number(cards)

cards = Card.all(:cardSetId => 'ARN', :order => :name.asc)
set_card_number(cards)

cards = Card.all(:cardSetId => 'BRB', :order => :name.asc)
set_card_number(cards)

cards = Card.all(:cardSetId => 'BTD', :order => :name.asc)
set_card_number(cards)

cards = Card.all(:cardSetId => 'CHR', :order => :name.asc)
set_card_number(cards)

cards = Card.all(:cardSetId => 'DKM', :order => :name.asc)
set_card_number(cards)

cards = Card.all(:cardSetId => 'FEM', :order => :name.asc)
set_card_number(cards)

cards = Card.all(:cardSetId => '5ED', :order => :name.asc)
set_card_number(cards)

cards = Card.all(:cardSetId => '4ED', :order => :name.asc)
set_card_number(cards)

cards = Card.all(:cardSetId => 'HML', :order => :name.asc)
set_card_number(cards)

cards = Card.all(:cardSetId => 'ICE', :order => :name.asc)
set_card_number(cards)

cards = Card.all(:cardSetId => 'LEG', :order => :name.asc)
set_card_number(cards)

cards = Card.all(:cardSetId => 'LEA', :order => :name.asc)
set_card_number(cards)

cards = Card.all(:cardSetId => 'LEB', :order => :name.asc)
set_card_number(cards)

cards = Card.all(:cardSetId => 'MIR', :order => :name.asc)
set_card_number(cards)

cards = Card.all(:cardSetId => 'POR', :order => :name.asc)
set_card_number(cards)

cards = Card.all(:cardSetId => 'P02', :order => :name.asc)
set_card_number(cards)

cards = Card.all(:cardSetId => '3ED', :order => :name.asc)
set_card_number(cards)

cards = Card.all(:cardSetId => 'S00', :order => :name.asc)
set_card_number(cards)

cards = Card.all(:cardSetId => 'STH', :order => :name.asc)
set_card_number(cards)

cards = Card.all(:cardSetId => 'TMP', :order => :name.asc)
set_card_number(cards)

cards = Card.all(:cardSetId => 'DRK', :order => :name.asc)
set_card_number(cards)

cards = Card.all(:cardSetId => '2ED', :order => :name.asc)
set_card_number(cards)

cards = Card.all(:cardSetId => 'VIS', :order => :name.asc)
set_card_number(cards)

cards = Card.all(:cardSetId => 'WTH', :order => :name.asc)
set_card_number(cards)










