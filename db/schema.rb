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

ActiveRecord::Schema.define(version: 20160418192014) do

  create_table "applications", force: true do |t|
    t.string   "app_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "task_id"
  end

  add_index "applications", ["task_id"], name: "index_applications_on_task_id"

  create_table "task_types", force: true do |t|
    t.string   "task_type"
    t.integer  "task_level"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "task_id"
  end

  add_index "task_types", ["task_id"], name: "index_task_types_on_task_id"

  create_table "tasks", force: true do |t|
    t.string   "name"
    t.string   "task_type_info"
    t.string   "assigned_to"
    t.datetime "scheduled_start_date"
    t.datetime "scheduled_end_date"
    t.datetime "actual_start_date"
    t.datetime "actual_end_date"
    t.decimal  "hours_worked"
    t.text     "resolution"
    t.integer  "level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
