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

ActiveRecord::Schema.define(version: 20150926212400) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "street",      null: false
    t.string   "city",        null: false
    t.string   "state"
    t.string   "state_short", null: false
    t.integer  "zip",         null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "genders", force: :cascade do |t|
    t.boolean  "male",       default: false, null: false
    t.boolean  "female",     default: false, null: false
    t.boolean  "other",      default: false, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "meals", force: :cascade do |t|
    t.boolean  "breakfast",  default: false, null: false
    t.boolean  "lunch",      default: false, null: false
    t.boolean  "dinner",     default: false, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "shelters", force: :cascade do |t|
    t.string   "name",                        null: false
    t.string   "description"
    t.string   "beds",        default: "0",   null: false
    t.boolean  "fee",         default: false, null: false
    t.integer  "age_min",     default: 0,     null: false
    t.integer  "age_max",     default: 0,     null: false
    t.string   "phone",                       null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "meal_id"
    t.integer  "address_id"
    t.integer  "gender_id"
    t.integer  "user_id"
  end

  add_index "shelters", ["address_id"], name: "index_shelters_on_address_id", using: :btree
  add_index "shelters", ["gender_id"], name: "index_shelters_on_gender_id", using: :btree
  add_index "shelters", ["meal_id"], name: "index_shelters_on_meal_id", using: :btree
  add_index "shelters", ["user_id"], name: "index_shelters_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "shelters", "addresses"
  add_foreign_key "shelters", "genders"
  add_foreign_key "shelters", "meals"
  add_foreign_key "shelters", "users"
end
