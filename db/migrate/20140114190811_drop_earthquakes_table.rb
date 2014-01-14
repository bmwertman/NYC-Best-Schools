class DropEarthquakesTable < ActiveRecord::Migration
  def change
      drop_table :earthquakes
  end
end
