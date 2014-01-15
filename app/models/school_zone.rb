class SchoolZone < ActiveRecord::Base
  attr_accessible :dbn_num, :district_id, :shape_length, :shape_area, :district_num, :school_name, :school_level, :overall_score, :overall_grade, :progress_score, :progress_grade, :performance_score, :performance_grade, :environment_score, :environment_grade
  belongs_to :district
end
