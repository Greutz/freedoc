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

ActiveRecord::Schema.define(version: 2019_10_24_224340) do

  create_table "appointements", force: :cascade do |t|
    t.datetime "date"
    t.integer "doctor_id"
    t.integer "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "city_id"
    t.index ["city_id"], name: "index_appointements_on_city_id"
    t.index ["doctor_id"], name: "index_appointements_on_doctor_id"
    t.index ["patient_id"], name: "index_appointements_on_patient_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "doctor_id"
    t.integer "patients_id"
    t.integer "appointements_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["appointements_id"], name: "index_cities_on_appointements_id"
    t.index ["doctor_id"], name: "index_cities_on_doctor_id"
    t.index ["patients_id"], name: "index_cities_on_patients_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doctors_has_specialties", force: :cascade do |t|
    t.integer "doctor_id"
    t.integer "speciality_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_doctors_has_specialties_on_doctor_id"
    t.index ["speciality_id"], name: "index_doctors_has_specialties_on_speciality_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "specialities", force: :cascade do |t|
    t.string "name"
    t.integer "doctor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_specialities_on_doctor_id"
  end

end
