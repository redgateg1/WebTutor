class FixColumnName < ActiveRecord::Migration
  def up
    rename_column :tutorials, :category_id, :CategoryID
    rename_column :tutorials, :tutorial_type, :TutorialType
  end

  def down
  end
end
