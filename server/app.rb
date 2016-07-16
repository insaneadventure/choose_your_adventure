ENV["RACK_ENV"] ||= 'development'

require "rubygems"
require "bundler/setup"
require "sinatra/base"
require "json"
require "pry"

require "securerandom"
require_relative "database_connection"
require_relative "lib/user"
require_relative "lib/piece"
require_relative "lib/choice"
require_relative "lib/storyboard"

class AdventureGame < Sinatra::Base
#include HTTParty

#def initialize


#end

  before do
    content_type "application/json"
  end


def get_adventure
  puts "What adventure would you like to play today?"
  adventure_choice = gets.chomp
end

  get "/" do
    "Welcome to our insane adventure game"

  end

  post "/login" do
    token = SecureRandom.hex
    user = User.create(token: token, name: params["name"])
    user.to_json
  end

  get "/users" do
    users = User.all
    users.to_json
  end

  get "/user/:id" do
    
  end

  #get "/adventure" do
    #binding.pry
    #adventure = Adventure.new
    #return adventure
  #end

  #get "/adventure/:id" do

  #end

  #get "/step/:id" do

  #end

  #get "/step/next" do

  #end

  run! if app_file == $PROGRAM_NAME
end
