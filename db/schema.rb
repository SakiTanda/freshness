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

ActiveRecord::Schema.define(version: 20170613225206) do

  create_table "categories", force: :cascade do |t|
    t.string "name", limit: 20
  end

  create_table "foods", force: :cascade do |t|
    t.string   "name",        limit: 20
    t.string   "picture",     limit: 20
    t.integer  "category_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["category_id"], name: "index_foods_on_category_id"
  end

  create_table "periods", force: :cascade do |t|
    t.integer "days",     null: false
    t.text    "detail",   null: false
    t.string  "picture",  null: false
    t.integer "food_id"
    t.integer "place_id"
    t.index ["food_id"], name: "index_periods_on_food_id"
    t.index ["place_id"], name: "index_periods_on_place_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "name", limit: 20
  end

end
