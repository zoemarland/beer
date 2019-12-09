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

ActiveRecord::Schema.define(version: 2019_12_09_144934) do

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
    t.string "brewed_by"
    t.index ["all_beer_id"], name: "index_brewed_beers_on_all_beer_id"
  end

end
