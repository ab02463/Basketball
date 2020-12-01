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

ActiveRecord::Schema.define(version: 2020_12_01_175515) do

  create_table "Booking", primary_key: "Booking_ID", force: :cascade do |t|
    t.integer "Customer_ID", null: false
    t.integer "Court_ID", null: false
    t.integer "Employee_ID", null: false
  end

  create_table "Court", primary_key: "Court_ID", force: :cascade do |t|
    t.string "Address", limit: 255, null: false
  end

  create_table "Customer", primary_key: "Customer_ID", force: :cascade do |t|
    t.string "Name", limit: 255, null: false
    t.integer "Age", null: false
    t.string "Telephone", limit: 20, default: "‘000’"
  end

  create_table "Employee", primary_key: "Employee_ID", force: :cascade do |t|
    t.string "Name", limit: 255, null: false
    t.integer "Age", null: false
    t.string "Telephone", limit: 255, null: false
  end

  create_table "Employee_Emails", primary_key: "Email", id: :string, limit: 255, force: :cascade do |t|
    t.integer "Employee_ID", null: false
  end

  create_table "courts", force: :cascade do |t|
    t.string "name"
    t.text "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
