class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :password_digest, :user_role, :username
end
