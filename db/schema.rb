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

ActiveRecord::Schema.define(version: 20170727092455) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.string "title"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price"
    t.string "version"
    t.string "fat_percent"
    t.string "origin"
    t.boolean "isVegan"
    t.boolean "code"
    t.string "picture"
    t.string "detail_picture"
    t.string "skill_needed"
    t.boolean "requires_oven"
    t.index ["user_id"], name: "index_actions_on_user_id"
  end

  create_table "friendships", id: false, force: :cascade do |t|
    t.integer "left_user_id"
    t.integer "right_user_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.integer "duration"
    t.bigint "action_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["action_id"], name: "index_items_on_action_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "firstname"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "sister_name"
    t.string "description"
    t.boolean "geo_enabled"
    t.string "city"
    t.string "gender"
    t.integer "number_of_cars"
    t.string "personal_car_brand"
    t.integer "number_of_cats"
    t.string "favorite_cat_breed"
    t.boolean "is_validated"
    t.string "lang"
    t.string "pseudo"
    t.boolean "notification_enabled"
    t.string "user_picture"
    t.string "user_background_image"
    t.string "user_profile_url"
    t.string "favorite_color"
    t.boolean "is_protected"
    t.string "bank_name"
    t.string "bank_iban"
    t.string "bitcoin_address"
    t.string "favorite_book"
    t.string "favorite_author"
    t.string "favorite_icecream_flavor"
    t.string "secondary_school"
    t.string "favorite_dish"
    t.string "height"
    t.string "weight"
    t.string "playing_instrument"
    t.string "favorite_pokemon"
    t.string "phone_number"
  end

  add_foreign_key "actions", "users"
  add_foreign_key "items", "actions"
end
