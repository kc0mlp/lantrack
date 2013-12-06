class RenameCodeToItemCodeInItemTable < ActiveRecord::Migration
  def up
    rename_column :items, :code, :item_code
  end

  def down
     rename_column :items, :item_code, :code
  end
end
