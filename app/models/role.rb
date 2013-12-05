class Role < ActiveRecord::Base
  has_many :users, :class_name => 'User'
  attr_accessible :description, :name
end
