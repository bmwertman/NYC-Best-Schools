class AddPointstoEarthquakes < ActiveRecord::Migration
  def up
    add_column :earthquakes, :center, :point, :srid => 4326, :null => false

  end

  def down
    remove_column :earthquakes, :center
  end
end

