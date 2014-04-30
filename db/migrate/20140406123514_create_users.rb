class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_role
      t.string :username
      t.string :password_digest
      t.date :subscribtion_expire

      t.timestamps
    end
  end
end
