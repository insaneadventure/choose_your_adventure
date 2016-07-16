# This is important, do not remove, and ensure it's included in every test or
# ensure this file is included
ENV["RACK_ENV"] = "test"

require "rubygems"
require "bundler/setup"
require "active_record"

begin
  require "pry"
rescue LoadError
end

require "minitest/autorun"
require "minitest/pride"
require "pry"
require "rack/test"

db_configs = YAML.load_file(File.expand_path("./db/database.yml")) #added a dot.  should only be one 

ActiveRecord::Base.establish_connection(
  db_configs[ENV["RACK_ENV"]]
)

require_relative "../app"
