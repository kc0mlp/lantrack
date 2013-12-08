class Item < ActiveRecord::Base
  attr_accessible :item_code, :created_by, :name, :item_type
end
