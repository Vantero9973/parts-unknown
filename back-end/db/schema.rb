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

ActiveRecord::Schema[7.0].define(version: 2022_12_14_012650) do
  create_table "blog_comments", force: :cascade do |t|
    t.string "body"
    t.string "date"
    t.integer "likes"
    t.integer "blog_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blog_id"], name: "index_blog_comments_on_blog_id"
  end

  create_table "blogs", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.string "description"
    t.string "date"
    t.string "image"
    t.integer "likes"
    t.string "read_time"
    t.string "category_one"
    t.string "category_two"
    t.string "username"
    t.string "profile_pic"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_blogs_on_user_id"
  end

  create_table "continents", force: :cascade do |t|
    t.string "name"
    t.string "lat"
    t.string "lng"
    t.integer "zoom"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "lat"
    t.string "lng"
    t.integer "zoom"
    t.integer "continent_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["continent_id"], name: "index_countries_on_continent_id"
  end

  create_table "destinations", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "country_name"
    t.string "description"
    t.integer "lat"
    t.integer "lng"
    t.integer "country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_destinations_on_country_id"
  end

  create_table "forum_comments", force: :cascade do |t|
    t.string "body"
    t.string "date"
    t.integer "likes"
    t.integer "post_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_forum_comments_on_post_id"
  end

  create_table "forums", force: :cascade do |t|
    t.string "country_name"
    t.string "flag"
    t.integer "user_id", null: false
    t.integer "country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_forums_on_country_id"
    t.index ["user_id"], name: "index_forums_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.string "date"
    t.integer "likes"
    t.string "topic"
    t.integer "forum_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["forum_id"], name: "index_posts_on_forum_id"
  end

  create_table "shop_items", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "description"
    t.string "category"
    t.integer "price"
    t.integer "country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_shop_items_on_country_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "password"
    t.string "password_digest"
    t.string "image"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "blog_comments", "blogs"
  add_foreign_key "blogs", "users"
  add_foreign_key "countries", "continents"
  add_foreign_key "destinations", "countries"
  add_foreign_key "forum_comments", "posts"
  add_foreign_key "forums", "countries"
  add_foreign_key "forums", "users"
  add_foreign_key "posts", "forums"
  add_foreign_key "shop_items", "countries"
end
