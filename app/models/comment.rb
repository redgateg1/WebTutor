class Comment < ActiveRecord::Base
  #has_secure_password
  attr_accessible :body, :tutorial_id
  
  validates_presence_of :tutorial_id
  validates_presence_of :body
  belongs_to :tutorial
  
end
