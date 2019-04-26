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

ActiveRecord::Schema.define(version: 2019_04_26_015835) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer "location_id"
    t.date "date"
    t.time "time"
    t.float "session_length"
    t.integer "session_cost"
    t.string "session_goal"
    t.boolean "available", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "student_id"
    t.integer "tutor_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "address"
    t.string "neighborhood"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "firstname"
    t.string "lastname"
    t.integer "age"
    t.integer "grade"
    t.string "goal"
    t.string "subject"
    t.boolean "learning_disability", default: false
    t.string "learning_disability_type"
    t.integer "experience"
    t.string "education"
    t.integer "price_per_hr"
    t.string "specialty"
    t.integer "hires"
    t.float "rating"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
  end

end
