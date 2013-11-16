class Event < ActiveRecord::Base
  attr_accessible :created_by, :end_at, :location, :name, :start_at
end
