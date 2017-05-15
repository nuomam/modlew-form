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

ActiveRecord::Schema.define(version: 20170515134336) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "first_name"
    t.string   "last_name"
    t.text     "address"
    t.string   "postal_code"
    t.string   "city"
    t.boolean  "policy_agreement"
    t.boolean  "weldom_newsletter"
    t.string   "facebook_profile"
    t.string   "twitter_profile"
    t.string   "instagram_profile"
    t.string   "youtube_channel"
    t.string   "personnal_blog"
    t.text     "motivation"
    t.boolean  "general_diy",            default: false
    t.boolean  "electricity",            default: false
    t.boolean  "plumbing",               default: false
    t.boolean  "building",               default: false
    t.boolean  "gardening",              default: false
    t.boolean  "decoration",             default: false
    t.boolean  "weldom_tester"
    t.string   "construction_type"
    t.integer  "construction_surface"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
