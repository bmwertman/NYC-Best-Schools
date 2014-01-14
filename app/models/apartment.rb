class Apartment < ActiveRecord::Base
  attr_accessible :address, :rent, :school_zone_id
  belongs_to :school_zone
end
