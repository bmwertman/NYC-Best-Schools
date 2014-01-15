class AddShapeLengthAndAreaColumns < ActiveRecord::Migration
  def up
    add_column :school_zones, :shape_length, :float
    add_column :school_zones, :shape_area, :float
  end

  def down
    remove_column :school_zones, :shape_length
    remove_column :school_zones, :shape_area
  end
end
