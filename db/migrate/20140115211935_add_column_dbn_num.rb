class AddColumnDbnNum < ActiveRecord::Migration
  def up
    add_column :school_zones, :dbn_num, :integer
  end

  def down
    remove_column :school_zones, :dbn_num
  end
end
