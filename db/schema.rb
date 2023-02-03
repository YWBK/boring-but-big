# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_02_03_220556) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lifts", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_lifts_on_name"
  end

  create_table "program_lifts", force: :cascade do |t|
    t.integer "program_id", null: false
    t.integer "lift_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lift_id"], name: "index_program_lifts_on_lift_id"
    t.index ["program_id", "lift_id"], name: "index_program_lifts_on_program_id_and_lift_id", unique: true
    t.index ["program_id"], name: "index_program_lifts_on_program_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_programs_on_name"
  end

  create_table "user_lift_maxes", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "lift_id", null: false
    t.integer "training_max", null: false
    t.string "unit", default: "imperial", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lift_id"], name: "index_user_lift_maxes_on_lift_id"
    t.index ["training_max"], name: "index_user_lift_maxes_on_training_max"
    t.index ["user_id", "lift_id"], name: "index_user_lift_maxes_on_user_id_and_lift_id", unique: true
    t.index ["user_id"], name: "index_user_lift_maxes_on_user_id"
  end

  create_table "user_programs", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "program_id", null: false
    t.integer "split", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["program_id"], name: "index_user_programs_on_program_id"
    t.index ["user_id", "program_id"], name: "index_user_programs_on_user_id_and_program_id", unique: true
    t.index ["user_id"], name: "index_user_programs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "first_name", null: false
    t.string "last_name"
    t.string "password_digest", null: false
    t.string "session_token", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["first_name"], name: "index_users_on_first_name"
    t.index ["last_name"], name: "index_users_on_last_name"
    t.index ["session_token"], name: "index_users_on_session_token", unique: true
  end

  create_table "workouts", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "program_id", null: false
    t.string "status", default: "incompleted", null: false
    t.integer "day", null: false
    t.integer "week", null: false
    t.integer "cycle", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cycle"], name: "index_workouts_on_cycle"
    t.index ["day"], name: "index_workouts_on_day"
    t.index ["program_id"], name: "index_workouts_on_program_id"
    t.index ["user_id"], name: "index_workouts_on_user_id"
    t.index ["week"], name: "index_workouts_on_week"
  end

end
