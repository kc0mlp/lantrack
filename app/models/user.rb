class User < ActiveRecord::Base
  belongs_to :role
  attr_accessible :created_by, :first_name, :crypt_hash, :last_name, :role_id, :username
end
