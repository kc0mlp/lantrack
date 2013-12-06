class Item < ActiveRecord::Base
  attr_accessible :item_code, :created_by, :name, :type
end
