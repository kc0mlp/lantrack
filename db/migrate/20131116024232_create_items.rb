class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :code
      t.integer :type
      t.string :name
      t.integer :created_by

      t.timestamps
    end
  end
end
