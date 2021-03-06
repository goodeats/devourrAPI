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

ActiveRecord::Schema.define(version: 20150522172931) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string  "body"
    t.string  "picture"
    t.integer "likes"
    t.integer "post_id"
    t.integer "user_id"
  end

  add_index "comments", ["post_id"], name: "index_comments_on_post_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "follows", force: :cascade do |t|
    t.integer "follow_user_id"
    t.integer "user_id"
  end

  add_index "follows", ["user_id"], name: "index_follows_on_user_id", using: :btree

  create_table "likes", force: :cascade do |t|
    t.boolean "count"
    t.integer "post_id"
    t.integer "user_id"
  end

  add_index "likes", ["post_id"], name: "index_likes_on_post_id", using: :btree
  add_index "likes", ["user_id"], name: "index_likes_on_user_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.string  "title"
    t.string  "description"
    t.string  "picture"
    t.integer "likes"
    t.integer "reheats"
    t.integer "mades"
    t.integer "stashes"
    t.string  "location"
    t.integer "user_id"
  end

  add_index "posts", ["user_id"], name: "index_posts_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string  "name"
    t.string  "username"
    t.string  "email"
    t.string  "password_digest"
    t.string  "token"
    t.string  "bio",             default: ""
    t.string  "avatar",          default: "https://s3.amazonaws.com/devourr/Durph.jpg"
    t.string  "website",         default: ""
    t.string  "location",        default: ""
    t.integer "privacy",         default: 0
  end

  add_foreign_key "comments", "posts"
  add_foreign_key "comments", "users"
  add_foreign_key "follows", "users"
  add_foreign_key "likes", "posts"
  add_foreign_key "likes", "users"
  add_foreign_key "posts", "users"
end
