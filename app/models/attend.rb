class Attend < ActiveRecord::Base
  attr_accessible :attendee_id, :checkedin_at, :checkedout_at, :created_by, :event_id, :is_present
end
