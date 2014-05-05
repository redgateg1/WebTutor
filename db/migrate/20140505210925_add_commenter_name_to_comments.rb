class AddCommenterNameToComments < ActiveRecord::Migration
  def change
    add_column :comments, :comment_name, :string
  end
end
