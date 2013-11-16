class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.timestamp :start_at
      t.timestamp :end_at
      t.string :location
      t.integer :created_by

      t.timestamps
    end
    add_index :events, :name, :unique => true
  end
end
