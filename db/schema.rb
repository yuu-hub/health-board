# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_02_09_141941) do

  create_table "favorites", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "search_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["search_id"], name: "index_favorites_on_search_id"
    t.index ["user_id", "search_id"], name: "index_favorites_on_user_id_and_search_id", unique: true
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "recipes", charset: "utf8mb4", force: :cascade do |t|
    t.string "recipe_1"
    t.string "recipe_2"
    t.string "recipe_3"
    t.string "recipe_4"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "searches", charset: "utf8mb4", force: :cascade do |t|
    t.string "condition_name"
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "food"
    t.string "content_2"
    t.string "food_2"
    t.string "content_3"
    t.string "food_3"
    t.string "content_4"
    t.string "food_4"
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "favorites", "searches"
  add_foreign_key "favorites", "users"
end
