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

ActiveRecord::Schema.define(version: 20151127165454) do

  create_table "categoria", force: :cascade do |t|
    t.integer  "cod",        limit: 4
    t.string   "nombre",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "cfacturas", force: :cascade do |t|
    t.integer  "num",        limit: 4
    t.date     "fecha"
    t.integer  "mneto",      limit: 4
    t.integer  "mbruto",     limit: 4
    t.string   "cliente_id", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "rut",        limit: 255
    t.string   "nombre",     limit: 255
    t.string   "direccion",  limit: 255
    t.integer  "fono",       limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "dfacturas", force: :cascade do |t|
    t.integer  "cantidad",    limit: 4
    t.integer  "hh",          limit: 4
    t.string   "producto_id", limit: 255
    t.string   "cfactura_id", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "entregas", force: :cascade do |t|
    t.integer  "cantidad",   limit: 4
    t.date     "fecha"
    t.string   "cliente_id", limit: 255
    t.string   "materia_id", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "mat_prods", force: :cascade do |t|
    t.integer  "cantidad",    limit: 4
    t.string   "materia_id",  limit: 255
    t.string   "producto_id", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "materia", force: :cascade do |t|
    t.integer  "cod",        limit: 4
    t.string   "nombre",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "productos", force: :cascade do |t|
    t.integer  "cod",          limit: 4
    t.string   "nombre",       limit: 255
    t.string   "categoria_id", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "roles_mask",             limit: 4
    t.string   "username",               limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
