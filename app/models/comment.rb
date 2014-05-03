class Comment < ActiveRecord::Base
  attr_accessible :body, :tutorial_id
  
  validates_presence_of :tutorial_id
  validates_presence_of :body
  belongs_to :tutorial
  
end
