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

ActiveRecord::Schema.define(version: 20150403212048) do

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
    t.string  "avatar",          default: "https://s3.amazonaws.com/devourr/Durph.jpg?X-Amz-Date=20150409T183911Z&X-Amz-Expires=300&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Signature=738dc19dfd8b6a50a3508b3d1e5871f49b020d625343fa5e215235e8a5a4990b&X-Amz-Credential=ASIAITICW77YYR6MVLTQ/20150409/us-east-1/s3/aws4_request&X-Amz-SignedHeaders=Host&x-amz-security-token=AQoDYXdzEEwagALFx%2BQM7DpqEa1oO5FcDWUoPRY8ME7lTTOFtCnC3dZSBuwAPGFsK4wTfyw5TUAJW4a/jpyk4DCRM0VgE7r1/SjtsQE9xAblHFl5BuP%2BFX7iW4XP%2BGnpiUd43l84Q%2BU/Kf/2FgZN6bpb4KQiNq6bz3hHR3HQ2eGoaN%2BXbjxzmqYx08UjDtmkIqnN6Bn1%2BGfrOgI0ZPjS6Bf3khZrKZMYmTQVYgWZ0TqbFaUEx4AEwxoxF2UozUb9Z/V3ZOUfucbN9l7PL2BLNmItf3/aTKecy0FwK1DCNUJCFpg3EG6x6R2aa/zVJQuP50S0o9qLJRwlA8jaFDTm6BPxKbY8iQ1vTQ3dIPWMm6kF"
    t.string  "website",         default: ""
    t.string  "location",        default: ""
    t.integer "privacy",         default: 0
  end

  add_foreign_key "comments", "posts"
  add_foreign_key "comments", "users"
  add_foreign_key "posts", "users"
end
