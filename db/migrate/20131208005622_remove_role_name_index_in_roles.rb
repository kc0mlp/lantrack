class RemoveRoleNameIndexInRoles < ActiveRecord::Migration
  def up
    remove_index :roles, :name
  end

  def down
    add_index :roles, :role_name, :unique => true
  end
end
