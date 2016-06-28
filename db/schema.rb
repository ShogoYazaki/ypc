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

ActiveRecord::Schema.define(version: 20160627060509) do

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.integer  "admin_level",         default: 0
    t.integer  "record_limit",        default: 30
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "item_id"
    t.string   "contact_email"
    t.integer  "jp_market_place_id"
    t.integer  "jp_markchant_id"
    t.integer  "jp_access_key_id"
    t.integer  "jp_secret_key"
    t.integer  "com_market_place_id"
    t.integer  "com_markchant_id"
    t.integer  "com_access_key_id"
    t.integer  "com_secret_key"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
