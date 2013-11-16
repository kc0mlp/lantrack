class Check < ActiveRecord::Base
  attr_accessible :attendee_id, :created_by, :event_id, :is_checked_in, :item_id
end
