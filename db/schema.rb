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

ActiveRecord::Schema.define(version: 20170722183354) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.boolean  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "admin",                  default: false
    t.integer  "role_id"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["role_id"], name: "index_users_on_role_id", using: :btree
  end

  create_table "vechicle_costs", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "vechicle_id"
    t.integer  "cost"
    t.text     "desc"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_vechicle_costs_on_user_id", using: :btree
    t.index ["vechicle_id"], name: "index_vechicle_costs_on_vechicle_id", using: :btree
  end

  create_table "vechicle_fuels", force: :cascade do |t|
    t.string   "company"
    t.integer  "user_id"
    t.integer  "vechicle_id"
    t.integer  "value"
    t.integer  "mileage"
    t.text     "desc"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "number"
    t.integer  "cost"
    t.float    "consumption"
    t.integer  "mileage_delta"
    t.index ["user_id"], name: "index_vechicle_fuels_on_user_id", using: :btree
    t.index ["vechicle_id"], name: "index_vechicle_fuels_on_vechicle_id", using: :btree
  end

  create_table "vechicle_notes", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "vechicle_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_vechicle_notes_on_user_id", using: :btree
    t.index ["vechicle_id"], name: "index_vechicle_notes_on_vechicle_id", using: :btree
  end

  create_table "vechicle_param_types", force: :cascade do |t|
    t.string   "name"
    t.integer  "priority"
    t.boolean  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vechicle_params", force: :cascade do |t|
    t.integer  "vechicle_param_type_id"
    t.integer  "user_id"
    t.float    "value"
    t.string   "desc"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "vechicle_id"
    t.index ["user_id"], name: "index_vechicle_params_on_user_id", using: :btree
    t.index ["vechicle_id"], name: "index_vechicle_params_on_vechicle_id", using: :btree
    t.index ["vechicle_param_type_id"], name: "index_vechicle_params_on_vechicle_param_type_id", using: :btree
  end

  create_table "vechicles", force: :cascade do |t|
    t.string   "name"
    t.string   "plates"
    t.date     "productiondate"
    t.date     "registration"
    t.date     "lastrevision"
    t.date     "nextrevison"
    t.text     "desc"
    t.integer  "mileage"
    t.string   "photo"
    t.json     "attachments"
    t.boolean  "status"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_foreign_key "users", "roles"
  add_foreign_key "vechicle_costs", "users"
  add_foreign_key "vechicle_costs", "vechicles"
  add_foreign_key "vechicle_fuels", "users"
  add_foreign_key "vechicle_fuels", "vechicles"
  add_foreign_key "vechicle_notes", "users"
  add_foreign_key "vechicle_notes", "vechicles"
  add_foreign_key "vechicle_params", "users"
  add_foreign_key "vechicle_params", "vechicle_param_types"
  add_foreign_key "vechicle_params", "vechicles"
end
