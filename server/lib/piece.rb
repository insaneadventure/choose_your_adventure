require 'active_record'

# Require your files
require_relative "user"


class Piece < ActiveRecord::Base

has_many :choices
belongs_to :storyboards
end
