# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140505210925) do

  create_table "categories", :force => true do |t|
    t.string   "categ_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comments", :force => true do |t|
    t.text     "body"
    t.integer  "tutorial_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "comment_name"
  end

  create_table "tutorials", :force => true do |t|
    t.string   "tutorial_name"
    t.string   "TutorialType"
    t.date     "tutorial_date_release"
    t.text     "tutorial_teacher_name"
    t.text     "tutorial_discription"
    t.string   "tutorial_path"
    t.integer  "CategoryID"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "user_role"
    t.string   "username"
    t.string   "password_digest"
    t.date     "subscribtion_expire"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

end
