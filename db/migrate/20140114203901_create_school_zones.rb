class CreateSchoolZones < ActiveRecord::Migration
  def change
    create_table :school_zones do |t|
      t.integer :district_id

      t.timestamps
    end
  end
end
