class Category < ActiveRecord::Base
  attr_accessible :categ_name

  has_many :tutorials, dependent: :destroy
  validates_presence_of :categ_name

end
