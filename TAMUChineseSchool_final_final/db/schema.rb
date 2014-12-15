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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141214164736) do

  create_table "children", force: true do |t|
    t.string   "name"
    t.string   "name_chn"
    t.string   "gender"
    t.integer  "family_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "children", ["family_id"], name: "index_children_on_family_id"

  create_table "courses", force: true do |t|
    t.string   "name"
    t.datetime "year"
    t.string   "semester"
    t.string   "class_room"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "textbook"
    t.integer  "user_id"
    t.string   "course_discription"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "courses", ["user_id"], name: "index_courses_on_user_id"

  create_table "events", force: true do |t|
    t.datetime "year"
    t.string   "semester"
    t.string   "event_name"
    t.string   "event_description"
    t.string   "place"
    t.string   "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "families", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "families", ["user_id"], name: "index_families_on_user_id"

  create_table "taking_courses", force: true do |t|
    t.integer  "child_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "taking_courses", ["child_id"], name: "index_taking_courses_on_child_id"
  add_index "taking_courses", ["course_id"], name: "index_taking_courses_on_course_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "role"
    t.string   "gender"
    t.string   "address"
    t.string   "phone"
    t.string   "name_chn"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
