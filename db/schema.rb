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

ActiveRecord::Schema.define(version: 20160505022317) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "items", ["category_id"], name: "index_items_on_category_id"

  create_table "orders", force: :cascade do |t|
    t.date     "order_date"
    t.string   "patient_name"
    t.integer  "age"
    t.string   "sex"
    t.text     "client_note"
    t.text     "other_note"
    t.boolean  "coti"
    t.integer  "client_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "orders", ["client_id"], name: "index_orders_on_client_id"

  create_table "services", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "cant"
    t.string   "color"
    t.boolean  "corona",             default: false
    t.boolean  "puente",             default: false
    t.boolean  "implante",           default: false
    t.boolean  "barra",              default: false
    t.boolean  "hibrida",            default: false
    t.boolean  "carilla",            default: false
    t.boolean  "in_onlay",           default: false
    t.boolean  "inlay_bridge",       default: false
    t.boolean  "lente_contacto",     default: false
    t.boolean  "perno",              default: false
    t.boolean  "sold_laser",         default: false
    t.boolean  "vita_classic",       default: false
    t.boolean  "vita_3d",            default: false
    t.boolean  "bioform",            default: false
    t.boolean  "chromarcop",         default: false
    t.boolean  "col_otras",          default: false
    t.boolean  "zirconio",           default: false
    t.boolean  "disilicato",         default: false
    t.boolean  "fedespatica",        default: false
    t.boolean  "porcelana",          default: false
    t.boolean  "pmma",               default: false
    t.boolean  "polimero",           default: false
    t.boolean  "composite",          default: false
    t.boolean  "metal_porcelana",    default: false
    t.boolean  "zirconio_porcelana", default: false
    t.boolean  "peek",               default: false
    t.boolean  "natural",            default: false
    t.boolean  "pimentado",          default: false
    t.boolean  "metal",              default: false
    t.boolean  "fresado_maquinado",  default: false
    t.boolean  "prensado",           default: false
    t.boolean  "colado",             default: false
    t.boolean  "cromo_cobalto",      default: false
    t.boolean  "titanium",           default: false
    t.boolean  "cromo_niquel",       default: false
    t.boolean  "oro",                default: false
    t.boolean  "paladio",            default: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "services", ["order_id"], name: "index_services_on_order_id"

  create_table "sessions", force: :cascade do |t|
    t.string   "session_id", null: false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], name: "index_sessions_on_session_id", unique: true
  add_index "sessions", ["updated_at"], name: "index_sessions_on_updated_at"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
