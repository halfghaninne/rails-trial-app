class Track < ActiveRecord::Base
  attr_accessible :name, :artist, :url
end