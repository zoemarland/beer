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

ActiveRecord::Schema.define(version: 2019_12_10_135205) do

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "city"
    t.string "postcode"
    t.integer "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_addresses_on_customer_id"
  end

  create_table "all_beers", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "address"
    t.string "categories"
    t.decimal "latitude"
    t.decimal "longitude"
    t.integer "postalCode"
    t.string "province"
    t.string "twitter"
    t.string "websites"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brewed_beers", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.string "style"
    t.integer "all_beer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["all_beer_id"], name: "index_brewed_beers_on_all_beer_id"
  end

  create_table "brewed_beers_reservations", id: false, force: :cascade do |t|
    t.integer "brewed_beer_id", null: false
    t.integer "reservation_id", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "email_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "all_beer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["all_beer_id"], name: "index_reservations_on_all_beer_id"
    t.index ["customer_id"], name: "index_reservations_on_customer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
