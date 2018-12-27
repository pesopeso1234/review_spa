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

ActiveRecord::Schema.define(version: 2018_12_08_093021) do

  create_table "areas", force: :cascade do |t|
    t.integer "prefecture"
    t.string "area_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "spa_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "spa_id"
    t.date "bathing_date"
    t.float "review_all_rating"
    t.float "review_bath_rating"
    t.float "review_meal_rating"
    t.float "review_other_rating"
    t.text "spa_impression"
    t.integer "service_id"
    t.text "service_impression"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.integer "spa_id"
    t.string "service_name"
    t.string "service_image_id"
    t.integer "service_type"
    t.integer "vote"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spas", force: :cascade do |t|
    t.string "spa_name"
    t.string "spa_image_id"
    t.integer "area_id"
    t.string "address"
    t.string "phone_number"
    t.string "regular_holiday"
    t.text "website"
    t.date "opening_day"
    t.text "charge"
    t.float "all_rating"
    t.float "bath_rating"
    t.float "meal_rating"
    t.float "other_rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "nickname"
    t.string "user_name"
    t.string "kana_name"
    t.integer "gender"
    t.integer "age"
    t.integer "area_id"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.time "deleted_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
