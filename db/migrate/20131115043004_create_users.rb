class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :hash
      t.integer :created_by
      t.string :first_name
      t.string :last_name
      t.integer :role_id

      t.timestamps
    end
  end
end
