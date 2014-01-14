class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.integer :school_zone_id
      t.integer :rent
      t.string :address

      t.timestamps
    end
  end
end
