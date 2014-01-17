class Apartment < ActiveRecord::Base
  attr_accessible :address, :rent, :school_zone_id, :latitude, :longitude
  belongs_to :school_zone

  geocoded_by :address
  after_validation :geocode # auto-fetch coordinates
  # , :if => :address_changed?
end
