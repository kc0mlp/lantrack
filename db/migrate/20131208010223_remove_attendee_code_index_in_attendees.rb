class RemoveAttendeeCodeIndexInAttendees < ActiveRecord::Migration
  def up
    remove_index :attendees, :code
  end

  def down
    add_index :attendees, :code, :unique => true
  end
end
