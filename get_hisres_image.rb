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


def get_card_hires_img(mvid)
  open("hi_res_card_images/" + mvid.to_s + ".jpg", 'wb') do |file|
    file << open("http://mtgimage.com/multiverseid/" + mvid.to_s + ".jpg").read
  end
end

startdb = SQLite3::Database.new("cards.sqlite")
startdb.results_as_hash = true
startdb.execute( "select * from card" ) do |row|
    if !File.exist?("hi_res_card_images/" +  row['mvid'].to_s + ".jpg")
      get_card_hires_img(row['mvid'].to_s)
      print "Saved: " + row['mvid'].to_s + "\n"
    else
      print "Exists: " + row['mvid'].to_s + "\n"   
    end
end
