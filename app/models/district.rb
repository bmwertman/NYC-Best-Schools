class District < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :school_zones
  has_many :apartments, :through => :school_zones
end
