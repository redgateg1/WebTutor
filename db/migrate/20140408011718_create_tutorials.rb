class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.string :tutorial_name
      t.string :TutorialType
      t.date :tutorial_date_release
      t.text :tutorial_teacher_name
      t.text :tutorial_discription
      t.string :tutorial_path
      t.string :CategoryID

      t.timestamps
    end
  end
end
