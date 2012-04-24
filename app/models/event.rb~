class Event < ActiveRecord::Base
  attr_accessible :details, :end, :img, :start, :title, :venue, :latitude, :longitude
  gecoded_by :venue
  after_validation :gecode, :if => :venue_changed?
end
