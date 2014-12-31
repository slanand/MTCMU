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

ActiveRecord::Schema.define(version: 20141229202902) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "classroom_lessons", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "lesson_id"
    t.integer  "meeting_id"
  end

  add_index "classroom_lessons", ["lesson_id"], name: "index_classroom_lessons_on_lesson_id", using: :btree
  add_index "classroom_lessons", ["meeting_id"], name: "index_classroom_lessons_on_meeting_id", using: :btree

  create_table "classroom_semesters", force: true do |t|
    t.integer  "classroom_id"
    t.integer  "teacher_id"
    t.integer  "year"
    t.boolean  "fall"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "classrooms", force: true do |t|
    t.integer  "school_id"
    t.string   "classroom_number"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "excuses", force: true do |t|
    t.string   "name"
    t.string   "reason"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lessons", force: true do |t|
    t.string   "overview"
    t.string   "lesson_plan"
    t.string   "presentation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meeting_attendances", force: true do |t|
    t.integer  "member_id"
    t.integer  "meeting_id"
    t.boolean  "present"
    t.integer  "excuse_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meeting_types", force: true do |t|
    t.string   "type"
    t.integer  "points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meetings", force: true do |t|
    t.integer  "meeting_type_id"
    t.date     "date"
    t.string   "meeting_minutes"
    t.integer  "classroom_semester_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "member_assignments", force: true do |t|
    t.integer  "member_id"
    t.integer  "classroom_semester_id"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.string   "andrew_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "admin"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mentee_attendances", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "mentee_participation_id"
    t.boolean  "present"
  end

  add_index "mentee_attendances", ["mentee_participation_id"], name: "index_mentee_attendances_on_mentee_participation_id", using: :btree

  create_table "mentee_participations", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "mentee_id"
    t.integer  "classroom_semester_id"
  end

  add_index "mentee_participations", ["classroom_semester_id"], name: "index_mentee_participations_on_classroom_semester_id", using: :btree
  add_index "mentee_participations", ["mentee_id"], name: "index_mentee_participations_on_mentee_id", using: :btree

  create_table "mentees", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "public_events", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.date     "start_date"
    t.date     "end_date"
    t.time     "time"
    t.integer  "meeting_type_id"
    t.string   "flyer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resources", force: true do |t|
    t.string   "url"
    t.string   "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "lesson_id"
    t.string   "name"
  end

  add_index "resources", ["lesson_id"], name: "index_resources_on_lesson_id", using: :btree

  create_table "schools", force: true do |t|
    t.string   "name"
    t.string   "street_1"
    t.string   "street_2"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "email"
    t.boolean  "partner"
    t.integer  "school_id"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
