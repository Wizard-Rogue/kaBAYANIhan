class Organization < ActiveRecord::Base
  attr_accessible :address, :description, :email, :logo, :name, :phone, :verified, :website, :latitude, :longitude
end
