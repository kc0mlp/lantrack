class User < ActiveRecord::Base
  attr_accessible :created_by, :first_name, :hash, :last_name, :role_id, :username
end
