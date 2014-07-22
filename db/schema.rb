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

ActiveRecord::Schema.define(version: 20140721141923) do

  create_table "courses", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "course_name"
  end

  create_table "courses_students", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stud_courses", force: true do |t|
    t.string   "student_id"
    t.string   "string"
    t.string   "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "studentcourses", force: true do |t|
    t.integer  "student_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "bdate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
