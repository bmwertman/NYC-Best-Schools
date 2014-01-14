class AddDecimaltoEarthquakes < ActiveRecord::Migration
  def up
     add_column :earthquakes, :magnitude, :decimal, :null => false
  end

  def down
    remove_column :earthquakes, :decimal
  end
end

