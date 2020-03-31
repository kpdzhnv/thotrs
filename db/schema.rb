# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_27_094733) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "facilities", force: :cascade do |t|
    t.text "description"
    t.string "name"
    t.bigint "room_id"
    t.index ["room_id"], name: "index_facilities_on_rooms_id"
  end

  create_table "facilities_records", force: :cascade do |t|
    t.bigint "record_id"
    t.bigint "facility_id"
    t.index ["facility_id"], name: "index_facilities_records_on_facility_id"
    t.index ["record_id"], name: "index_facilities_records_on_record_id"
  end

  create_table "records", force: :cascade do |t|
    t.date "date"
    t.time "time"
    t.bigint "user_id"
    t.bigint "room_id"
    t.integer "duration"
    t.index ["room_id"], name: "index_records_on_rooms_id"
    t.index ["user_id"], name: "index_records_on_users_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "room_name", null: false
    t.text "description"
  end

  create_table "statuses", force: :cascade do |t|
    t.string "status_name"
    t.float "discount"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "status_id"
    t.string "password_digest"
    t.index ["status_id"], name: "index_users_on_statuses_id"
  end

end
