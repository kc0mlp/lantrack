class Item < ActiveRecord::Base
  attr_accessible :code, :created_by, :name, :type
end
