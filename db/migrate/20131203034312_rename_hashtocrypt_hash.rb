class RenameHashtocryptHash < ActiveRecord::Migration
  def up
    rename_column :users, :hash, :crypt_hash
  end

  def down
    rename_column :users, :crypt_hash, :hash
  end
end
