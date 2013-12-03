class User < ActiveRecord::Base
  attr_accessible :created_by, :first_name, :crytp_hash, :last_name, :role_id, :username
end
