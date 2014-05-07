class Tutorial < ActiveRecord::Base
#has_secure_password
def self.search(search)
  search_condition = "%" + search + "%"
  find(:all, :conditions => ['tutorial_name ILIKE ? OR tutorial_discription ILIKE ?', search_condition, search_condition])
end

  attr_accessible :tutorial_date_release, :tutorial_discription, :tutorial_name, :tutorial_path, :tutorial_teacher_name, :avatar, :CategoryID, :TutorialType
  
  belongs_to :category
  
  has_many :comments, dependent: :destroy #relationship between comments and tutorials (if u delete a tutorials all comments will be deleted)
  
  scope :math, lambda{where(:CategoryID => 'Mathematics')}
  scope :reading, lambda{where(:CategoryID => 'Reading')}
  scope :writing, lambda{where(:CategoryID => 'Writing')}
  
  validates_presence_of :tutorial_date_release
  validates_presence_of :tutorial_discription
  validates_presence_of :tutorial_name
  #validates_presence_of :tutorial_teacher_name
  ###Paperclip
#has_attached_file :avatar,:storage => :s3,
#:s3_credentials => "#{Rails.root}/config/s3.yml",:path => ":attachment/:id.:extension",:bucket => 'webtutor'
has_attached_file :avatar,:storage => :s3,
:s3_credentials => "#{Rails.root}/config/s3.yml",
:path => ":attachment/:id.:extension", 
:url => ":s3_domain_url"
#has_attached_file :avatar
 validates_attachment_content_type :avatar, :content_type => /.*/
end
