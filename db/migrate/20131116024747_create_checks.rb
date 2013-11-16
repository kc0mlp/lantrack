class CreateChecks < ActiveRecord::Migration
  def change
    create_table :checks do |t|
      t.integer :item_id
      t.integer :attendee_id
      t.integer :event_id
      t.boolean :is_checked_in
      t.integer :created_by

      t.timestamps
    end
  end
end
