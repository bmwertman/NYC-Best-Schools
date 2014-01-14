class CreateUserFaveSchoolZonesJoiner < ActiveRecord::Migration
  def up
    create_table :user_fave_school_zones do |t|
      t.integer :school_zone_id
      t.integer :user_id
      t.timestamp
    end
  end

  def down
    drop_table :user_fave_school_zones
  end
end
