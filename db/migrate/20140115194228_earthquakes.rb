class Earthquakes < ActiveRecord::Migration
 def change
    create_table :earthquakes do |t|
      t.point :center, :srid => 4326, :null => false
      t.decimal :magnitude, :null => false

      t.timestamps
    end
  end
end
