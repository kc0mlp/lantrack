class CreateAttends < ActiveRecord::Migration
  def change
    create_table :attends do |t|
      t.integer :attendee_id
      t.integer :event_id
      t.boolean :is_present
      t.timestamp :checkedin_at
      t.timestamp :checkedout_at
      t.integer :created_by

      t.timestamps
    end
  end
end
