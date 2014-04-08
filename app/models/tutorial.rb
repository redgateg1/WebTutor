class Tutorial < ActiveRecord::Base
  attr_accessible :category_id, :tutorial_date_release, :tutorial_discription, :tutorial_name, :tutorial_path, :tutorial_teacher_name, :tutorial_type
  
  belongs_to :category
  validates_presence_of :category_id
  validates_presence_of :tutorial_date_release
  validates_presence_of :tutorial_discription
  validates_presence_of :tutorial_name
  validates_presence_of :tutorial_path
  validates_presence_of :tutorial_teacher_name
  validates_presence_of :tutorial_type

end
