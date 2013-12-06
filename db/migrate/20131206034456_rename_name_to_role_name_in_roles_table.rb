class RenameNameToRoleNameInRolesTable < ActiveRecord::Migration
  def up
    rename_column :roles, :name, :role_name
  end

  def down
    rename_column :roles, :role_name, :name
  end
end
