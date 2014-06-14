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

def get_card_img(mvid)
  open("card_images/" + mvid.to_s + ".jpeg", 'wb') do |file|
    file << open("http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=" + 
    mvid.to_s + "&type=card").read
  end
end

def get_card_hires_img(mvid)
  open("hi_res_card_images/" + mvid.to_s + ".jpg", 'wb') do |file|
    file << open("http://mtgimage.com/multiverseid/" + mvid.to_s + ".jpg").read
  end
end

Card.find_each(:order => :_id.desc) do |card|  
    if !File.exist?("card_images/" +  card._id.to_s + ".jpeg")
       get_card_img(card._id)
       print "Saved Image: "  + card._id.to_s + "\n"
    else
       print "Image Exists: " + card._id.to_s + "\n"   
    end
  
    if !File.exist?("hi_res_card_images/" +  card._id.to_s + ".jpg")
      get_card_hires_img(card._id.to_s)
      print "Saved HiRes: " + card._id.to_s + "\n"
    else
      print "HiRes Exists: " + card._id.to_s + "\n"   
    end
end
