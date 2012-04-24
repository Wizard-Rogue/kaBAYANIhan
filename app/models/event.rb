class Event < ActiveRecord::Base
  attr_accessible :details, :end, :img, :start, :title, :venue, :latitude, :longitude
  geocoded_by :venue
  after_validation :geocode, :if => :venue_changed?
end
