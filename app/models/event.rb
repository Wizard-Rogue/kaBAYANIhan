class Event < ActiveRecord::Base
  attr_accessible :details, :end, :img, :start, :title, :venue, :latitude, :longitude
end
