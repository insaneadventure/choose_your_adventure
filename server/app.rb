ENV["RACK_ENV"] ||= 'development'

require "rubygems"
require "bundler/setup"
require "sinatra/base"
require "json"
require "pry"

require "securerandom"
require_relative "database_connection"
require_relative "lib/adventure"

class AdventureGame < Sinatra::Base

  before do
    content_type "application/json"
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

  run! if app_file == $PROGRAM_NAME
end
