class User < ActiveRecord::Base
	has_secure_password
  attr_accessible :first_name, :last_name, :password_digest, :subscribtion_expire, :user_role, :username
end
