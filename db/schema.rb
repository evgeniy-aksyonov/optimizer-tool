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

ActiveRecord::Schema.define(version: 20140327141954) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "schoolinfos", force: true do |t|
    t.integer  "school_id"
    t.integer  "students"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.integer  "teachers"
    t.integer  "salary"
  end

  add_index "schoolinfos", ["school_id"], name: "index_schoolinfos_on_school_id", using: :btree

  create_table "schools", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "students"
    t.integer  "teachers"
    t.integer  "studcount"
    t.integer  "averagesalary"
    t.integer  "stud_grade_k"
    t.integer  "stud_grade_1"
    t.integer  "stud_grade_2"
    t.integer  "stud_grade_3"
    t.integer  "stud_grade_4"
    t.integer  "stud_grade_5"
    t.integer  "stud_grade_6"
    t.integer  "stud_grade_7"
    t.integer  "stud_grade_8"
    t.integer  "stud_grade_9"
    t.integer  "stud_grade_10"
    t.integer  "stud_grade_11"
    t.integer  "stud_grade_12"
    t.integer  "teach_grade_k"
    t.integer  "teach_grade_1"
    t.integer  "teach_grade_2"
    t.integer  "teach_grade_3"
    t.integer  "teach_grade_4"
    t.integer  "teach_grade_5"
    t.integer  "teach_grade_6"
    t.integer  "teach_grade_7"
    t.integer  "teach_grade_8"
    t.integer  "teach_grade_9"
    t.integer  "teach_grade_10"
    t.integer  "teach_grade_11"
    t.integer  "teach_grade_12"
    t.integer  "stud_grade_all"
    t.integer  "teach_grade_all"
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

  create_table "students_by_grades", force: true do |t|
    t.integer  "grade_9"
    t.integer  "grade_10"
    t.integer  "grade_11"
    t.integer  "grade_12"
    t.integer  "school_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "grade_K"
    t.integer  "grade_1"
    t.integer  "grade_2"
    t.integer  "grade_3"
    t.integer  "grade_4"
    t.integer  "grade_5"
    t.integer  "grade_6"
    t.integer  "grade_7"
    t.integer  "grade_8"
  end

  add_index "students_by_grades", ["school_id"], name: "index_students_by_grades_on_school_id", using: :btree

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

  create_table "teachers_by_grades", force: true do |t|
    t.integer  "school_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "grade_k"
    t.integer  "grade_1"
    t.integer  "grade_2"
    t.integer  "grade_3"
    t.integer  "grade_4"
    t.integer  "grade_5"
    t.integer  "grade_6"
    t.integer  "grade_7"
    t.integer  "grade_8"
    t.integer  "grade_9"
    t.integer  "grade_10"
    t.integer  "grade_11"
    t.integer  "grade_12"
  end

  add_index "teachers_by_grades", ["school_id"], name: "index_teachers_by_grades_on_school_id", using: :btree

end
