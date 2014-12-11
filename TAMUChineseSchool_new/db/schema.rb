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

ActiveRecord::Schema.define(version: 20141211063228) do

  create_table "courses", force: true do |t|
    t.string   "year"
    t.string   "semester"
    t.string   "name"
    t.string   "class_room"
    t.string   "time"
    t.string   "textbook"
    t.string   "course_discription"
    t.integer  "teacher_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "courses", ["teacher_id"], name: "index_courses_on_teacher_id"

  create_table "teachers", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teachers", ["user_id"], name: "index_teachers_on_user_id"

  create_table "users", force: true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "last_name_chn"
    t.string   "first_name_chn"
    t.string   "gender"
    t.text     "address"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
