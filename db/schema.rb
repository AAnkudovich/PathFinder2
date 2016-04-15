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

ActiveRecord::Schema.define(version: 20160410223614) do

  create_table "boxes", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "points",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.float    "price",       limit: 2
    t.integer  "quantity",    limit: 4
    t.integer  "locationId",  limit: 4
    t.integer  "boxId",       limit: 4
    t.boolean  "fragile"
    t.float    "weight",      limit: 2
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "categoryID",  limit: 4
    t.string   "image",       limit: 255
  end

  create_table "lineitems", force: :cascade do |t|
    t.integer  "item_id",           limit: 4
    t.integer  "shopping_order_id", limit: 4
    t.integer  "cart_id",           limit: 4
    t.integer  "quantity",          limit: 4
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.boolean  "packed",                      default: false
  end

  create_table "locations", force: :cascade do |t|
    t.integer  "lat",        limit: 4
    t.integer  "lon",        limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "packing_jobs", force: :cascade do |t|
    t.integer  "customer_id",      limit: 4
    t.integer  "shoppingOrder_id", limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "shopping_orders", force: :cascade do |t|
    t.integer  "customer_id",   limit: 4
    t.string   "payMethod",     limit: 255
    t.decimal  "total",                     precision: 10
    t.string   "currentStatus", limit: 255
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "",    null: false
    t.string   "encrypted_password",     limit: 255, default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.string   "name",                   limit: 255
    t.datetime "date_of_birth"
    t.boolean  "is_female",                          default: false
    t.string   "address",                limit: 255
    t.float    "latitude",               limit: 24
    t.float    "longitude",              limit: 24
    t.boolean  "is_admin",                           default: false
    t.boolean  "is_packer",                          default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
