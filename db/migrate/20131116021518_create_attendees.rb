class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.string :handle
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.integer :created_by
      t.string :code

      t.timestamps
    end
    add_index :attendees, :code, :unique => true
  end
end
