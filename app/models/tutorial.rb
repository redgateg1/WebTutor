class Tutorial < ActiveRecord::Base
  attr_accessible :tutorial_date_release, :tutorial_discription, :tutorial_name, :tutorial_path, :tutorial_teacher_name, :avatar, :CategoryID, :TutorialType
  
  belongs_to :category
  #validates_presence_of :category_id
  validates_presence_of :tutorial_date_release
  validates_presence_of :tutorial_discription
  validates_presence_of :tutorial_name
  #validates_presence_of :tutorial_path
  #alidates_presence_of :tutorial_teacher_name
  #validates_presence_of :tutorial_type
has_attached_file :avatar
 validates_attachment_content_type :avatar, :content_type => /.*/
end
