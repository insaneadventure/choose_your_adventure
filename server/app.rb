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
    user = User.find(params["id"])
    user.to_json
  end


  get "/storyboards" do
    storyboards = Storyboard.all
    storyboards.to_json
  end

  get "/storyboard/:id" do
    storyboard = Storyboard.find(params["id"])
    storyboard.to_json
  end

  get "/pieces" do
    pieces = Piece.all
    pieces.to_json
  end

  get "/piece/:id" do
    piece = Piece.find(params["id"])
    piece.to_json
  end

  get "/choice/:id" do
    choice = Choice.find(params["id"])
    choice.to_json
  end

  get "/storyboard_pieces/:id" do
    storyboard_pieces = Piece.where("storyboard_id = ?", params["id"]) # SELECT * FROM pieces WHERE storyboard_id = params[id]
    storyboard_pieces.to_json
  end

  get "/piece_choices/:id" do
      piece_choices = Choice.where("last_piece_id = ?", params["id"])
      piece_choices.to_json
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
