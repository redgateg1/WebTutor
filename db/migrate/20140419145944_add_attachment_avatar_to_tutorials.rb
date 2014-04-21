class AddAttachmentAvatarToTutorials < ActiveRecord::Migration
  def self.up
    change_table :tutorials do |t|
      t.has_attached_file :avatar
    end
  end

  def self.down
    drop_attached_file :tutorials, :avatar
  end
end
