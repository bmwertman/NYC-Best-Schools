class CreateUserFaveApartmentsJoiner < ActiveRecord::Migration
  def up
    create_table :user_fave_apartments do |t|
      t.integer :apartment_id
      t.integer :user_id
    end
  end

  def down
    drop_table :user_fave_apartments
  end
end
