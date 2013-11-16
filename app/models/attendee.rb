class Attendee < ActiveRecord::Base
  attr_accessible :code, :created_by, :first_name, :handle, :last_name, :phone_number
end
