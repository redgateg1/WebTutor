class User < ActiveRecord::Base
	has_secure_password
  attr_accessible :first_name, :last_name, :password_digest, :user_role, :username
end
