class RemoveNameIndexInPermissions < ActiveRecord::Migration
 def up
    remove_index :permissions, :name
  end

  def down
    add_index :permissions, :name, :unique => true
  end
end
