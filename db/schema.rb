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

ActiveRecord::Schema.define(version: 20140130141716) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "schools", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "students"
    t.integer  "teachers"
    t.integer  "studcount"
    t.integer  "averagesalary"
  end

  create_table "staffs", force: true do |t|
    t.string   "title"
    t.integer  "school_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "staffs", ["school_id"], name: "index_staffs_on_school_id", using: :btree

  create_table "students", force: true do |t|
    t.integer  "school_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "firstname"
    t.integer  "grade"
  end

  add_index "students", ["school_id"], name: "index_students_on_school_id", using: :btree

  create_table "teachers", force: true do |t|
    t.integer  "school_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "firstname"
    t.string   "subject"
    t.boolean  "fulltime"
    t.integer  "salary"
  end

  add_index "teachers", ["school_id"], name: "index_teachers_on_school_id", using: :btree

end
