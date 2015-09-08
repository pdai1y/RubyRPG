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

ActiveRecord::Schema.define(version: 20140618022528) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "api_keys", force: :cascade do |t|
    t.string   "access_token",                null: false
    t.datetime "expires_at"
    t.integer  "user_id",                     null: false
    t.boolean  "active",       default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "api_keys", ["access_token"], name: "index_api_keys_on_access_token", unique: true, using: :btree
  add_index "api_keys", ["user_id"], name: "index_api_keys_on_user_id", using: :btree

  create_table "armors", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.string   "desc"
    t.integer  "acBonus"
    t.integer  "maxDex"
    t.integer  "checkPenalty"
    t.integer  "spellFailure"
    t.string   "speed"
    t.integer  "weight"
    t.string   "specialProperties"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feats", force: :cascade do |t|
    t.string   "name"
    t.string   "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mobs", force: :cascade do |t|
    t.string   "name"
    t.string   "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "money", force: :cascade do |t|
    t.integer  "copper"
    t.integer  "silver"
    t.integer  "gold"
    t.integer  "platinum"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.integer  "lvl"
    t.string   "race"
    t.string   "virtue"
    t.string   "alignment"
    t.string   "size"
    t.integer  "str",        default: 0
    t.integer  "strMod",     default: 0
    t.integer  "dex",        default: 0
    t.integer  "dexMod",     default: 0
    t.integer  "con",        default: 0
    t.integer  "conMod",     default: 0
    t.integer  "int",        default: 0
    t.integer  "intMod",     default: 0
    t.integer  "wis",        default: 0
    t.integer  "wisMod",     default: 0
    t.integer  "char",       default: 0
    t.integer  "charMod",    default: 0
    t.integer  "HP",         default: 0
    t.integer  "AC",         default: 0
    t.integer  "initMod",    default: 0
    t.integer  "BAB",        default: 0
    t.integer  "spellRes",   default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "possessions", force: :cascade do |t|
    t.string   "name"
    t.string   "desc"
    t.string   "weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "protective_items", force: :cascade do |t|
    t.string   "name"
    t.integer  "acBonus"
    t.integer  "weight"
    t.string   "specialProperties"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "races", force: :cascade do |t|
    t.string   "name"
    t.string   "racialModDesc"
    t.string   "favoredClass"
    t.string   "raceDescription"
    t.integer  "strMod"
    t.integer  "dexMod"
    t.integer  "intMod"
    t.integer  "wisMod"
    t.integer  "charMod"
    t.integer  "conMod"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shields", force: :cascade do |t|
    t.string   "name"
    t.integer  "acBonus"
    t.integer  "weight"
    t.integer  "checkPenalty"
    t.integer  "spellFailure"
    t.string   "specialProperties"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "special_abilities", force: :cascade do |t|
    t.string   "name"
    t.string   "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spells", force: :cascade do |t|
    t.string   "name"
    t.string   "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "beat_game",              default: false
    t.string   "user_name",              default: "",    null: false
    t.boolean  "admin",                  default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "virtues", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
