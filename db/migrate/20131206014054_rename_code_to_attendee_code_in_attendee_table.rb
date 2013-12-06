class RenameCodeToAttendeeCodeInAttendeeTable < ActiveRecord::Migration
  def up
    rename_column :attendees, :code, :attendee_code
  end

  def down
    rename_column :attendees, :attendee_code, :code
  end
end
