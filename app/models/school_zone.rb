class SchoolZone < ActiveRecord::Base
  attr_accessible :district_id
  belongs_to :district
end
