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

ActiveRecord::Schema.define(version: 20150513012554) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "forms", force: :cascade do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.boolean  "gender_male"
    t.boolean  "gender_female"
    t.boolean  "gender_other"
    t.string   "address"
    t.string   "postal_code"
    t.string   "main_intersection"
    t.date     "birthday"
    t.string   "cellphone"
    t.string   "house_phone"
    t.string   "emergency_contact_name"
    t.string   "emergency_contact_phone"
    t.string   "email"
    t.boolean  "physical_limitations"
    t.string   "physical_limitations_describe"
    t.boolean  "allergies"
    t.string   "allergies_describe"
    t.boolean  "surgery_or_injury"
    t.string   "surgery_or_injury_describe"
    t.boolean  "whimis_awareness"
    t.string   "whimis_describe"
    t.boolean  "sin_number"
    t.date     "sin_number_expiry"
    t.boolean  "legal_to_work"
    t.boolean  "driver_license"
    t.boolean  "license_g1"
    t.boolean  "license_g2"
    t.boolean  "license_g"
    t.boolean  "car_owner"
    t.boolean  "is_car"
    t.boolean  "is_van"
    t.boolean  "is_pickup"
    t.boolean  "own_safety_boots"
    t.boolean  "own_safety_boots_csa"
    t.boolean  "own_helmet"
    t.string   "nationality"
    t.boolean  "registered_other_agencies"
    t.string   "other_agencies_describe"
    t.boolean  "is_student"
    t.boolean  "education_primary"
    t.boolean  "education_secundary"
    t.boolean  "education_college"
    t.boolean  "education_university"
    t.boolean  "education_other"
    t.string   "education_title"
    t.date     "education_graduation_date"
    t.boolean  "english_fluent"
    t.boolean  "english_well"
    t.boolean  "english_dificulty"
    t.string   "other_language"
    t.boolean  "other_language_fluent"
    t.boolean  "other_language_well"
    t.boolean  "other_language_dificulty"
    t.string   "available_from"
    t.string   "position_required"
    t.text     "how_find_out_solamac"
    t.text     "work_history"
    t.boolean  "shift_day"
    t.boolean  "shift_afternoon"
    t.boolean  "shift_night"
    t.boolean  "shift_overnight"
    t.boolean  "shift_weekdays"
    t.boolean  "shift_weekends"
    t.boolean  "shift_overtime"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
