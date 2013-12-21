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

ActiveRecord::Schema.define(version: 20131221002214) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "art_pieces", force: true do |t|
    t.string   "name",                   null: false
    t.datetime "date_created"
    t.boolean  "date_for_sale",          null: false
    t.decimal  "price",                  null: false
    t.boolean  "available_for_purchase", null: false
    t.integer  "art_type_id"
    t.integer  "collection_id"
    t.integer  "artist"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "artist_id",              null: false
  end

  create_table "art_types", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "artist_id",  null: false
  end

  create_table "artists", force: true do |t|
    t.string   "name",        null: false
    t.string   "birthplace"
    t.integer  "art_type_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "collections", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "name",        null: false
    t.decimal  "total_spent", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "favorite_collections", force: true do |t|
    t.string   "name",        null: false
    t.integer  "customer_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purchases", force: true do |t|
    t.integer  "customer_id",  null: false
    t.integer  "art_piece_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
