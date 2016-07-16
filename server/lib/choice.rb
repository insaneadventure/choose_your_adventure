require 'active_record'

# Require your files
require_relative "user"


class Choice < ActiveRecord::Base

belongs_to :pieces



end
