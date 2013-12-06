class RenameDescriptionToRoleDescriptionInRolesTable < ActiveRecord::Migration
  def up
    rename_column :roles, :description, :role_description
  end
  
  def down
    rename_column :roles, :role_description, :description
  end
end