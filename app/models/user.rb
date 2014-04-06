class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :password_digest, :subscribtion_expire, :user_role, :username
end
