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

ActiveRecord::Schema.define(version: 20170316160742) do

  create_table "release_notes", force: :cascade do |t|
    t.decimal "problem_log_number"
    t.string "problem_log_title"
    t.date "date_commited"
    t.string "process_path"
    t.text "issue"
    t.text "resolution"
    t.decimal "service_pack"
    t.decimal "patch_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "test_plan"
  end

  create_table "test_plans", force: :cascade do |t|
    t.integer "release_note_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "plan_pieces"
    t.index ["release_note_id"], name: "index_test_plans_on_release_note_id"
  end

end
