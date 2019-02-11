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

ActiveRecord::Schema.define(version: 20190211102405) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "movies", force: :cascade do |t|
    t.string   "movie_name"
    t.date     "release_date"
    t.text     "small_description"
    t.text     "description"
    t.string   "genre"
    t.boolean  "recommended?"
    t.integer  "age_bar"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "wallpaper_file_name"
    t.string   "wallpaper_content_type"
    t.integer  "wallpaper_file_size"
    t.datetime "wallpaper_updated_at"
    t.text     "comments"
  end

  create_table "stars", force: :cascade do |t|
    t.integer  "movie_id"
    t.string   "hero"
    t.string   "heroin"
    t.string   "director"
    t.string   "producer"
    t.string   "supporting_cast"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["movie_id"], name: "index_stars_on_movie_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
    t.string   "firstname"
    t.string   "lastname"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
