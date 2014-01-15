class AddSchoolAttributeColumns < ActiveRecord::Migration
def up
    add_column :school_zones, :district_num, :integer
    add_column :school_zones, :school_name, :string
    add_column :school_zones, :school_level, :string
    add_column :school_zones, :overall_score, :integer
    add_column :school_zones, :overall_grade, :string
    add_column :school_zones, :progress_score, :integer
    add_column :school_zones, :progress_grade, :string
    add_column :school_zones, :performance_score, :integer
    add_column :school_zones, :performance_grade, :string
    add_column :school_zones, :environment_score, :integer
    add_column :school_zones, :environment_grade, :string
  end
  def down
    remove_column :school_zones, :district_num
    remove_column :school_zones, :school_name
    remove_column :school_zones, :school_level
    remove_column :school_zones, :overall_score
    remove_column :school_zones, :overall_grade
    remove_column :school_zones, :progress_score
    remove_column :school_zones, :progress_grade
    remove_column :school_zones, :performance_score
    remove_column :school_zones, :performance_grade
    remove_column :school_zones, :environment_score
    remove_column :school_zones, :environment_grade
  end
end
