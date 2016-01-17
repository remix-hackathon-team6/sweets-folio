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

ActiveRecord::Schema.define(version: 20160116183252) do

  create_table "evals", force: :cascade do |t|
    t.integer  "user_id_id",    limit: 4,     null: false
    t.integer  "shouhin_id_id", limit: 4,     null: false
    t.text     "comment",       limit: 65535
    t.integer  "evaluation",    limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "evals", ["shouhin_id_id"], name: "index_evals_on_shouhin_id_id", using: :btree
  add_index "evals", ["user_id_id"], name: "index_evals_on_user_id_id", using: :btree

  create_table "shouhins", force: :cascade do |t|
    t.integer  "shouhin_id",      limit: 4
    t.string   "shouhin_name",    limit: 255
    t.text     "shouhin_info",    limit: 65535
    t.integer  "shouhin_eval",    limit: 4
    t.integer  "user_id",         limit: 4
    t.string   "shouhin_image_1", limit: 255
    t.string   "shouhin_image_2", limit: 255
    t.string   "shouhin_image_3", limit: 255
    t.string   "shouhin_image_4", limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "user_id",         limit: 4
    t.string   "user_name",       limit: 255
    t.string   "email",           limit: 255
    t.string   "password_digest", limit: 255
    t.string   "user_image",      limit: 255
    t.text     "user_info",       limit: 65535
    t.integer  "shouhin_id",      limit: 4
    t.boolean  "pastry"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

end
