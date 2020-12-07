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

ActiveRecord::Schema.define(version: 2020_12_07_181632) do

  create_table "courts", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "employee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address"], name: "index_courts_on_address", unique: true
    t.index ["employee_id"], name: "index_courts_on_employee_id"
    t.index ["name"], name: "index_courts_on_name", unique: true
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_employees_on_id", unique: true
    t.index ["telephone"], name: "index_employees_on_telephone", unique: true
  end

  create_table "orders", force: :cascade do |t|
    t.integer "Court_id", null: false
    t.integer "user_id", null: false
    t.string "DateTime", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Court_id"], name: "index_orders_on_Court_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
