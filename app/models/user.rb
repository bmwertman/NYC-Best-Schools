class User < ActiveRecord::Base
  has_many :apartments
  has_many :school_zones
  # attr_accessible :title, :body
end
