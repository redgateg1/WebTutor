class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :tutorial_id
      t.string :comment_name
      t.timestamps
    end
  end
end
