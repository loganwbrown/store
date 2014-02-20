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

ActiveRecord::Schema.define(version: 20140219223537) do

  create_table "class_rooms", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "class_rooms_students", id: false, force: true do |t|
    t.integer "class_room_id"
    t.integer "student_id"
  end

  create_table "gollums", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hobbits", force: true do |t|
    t.integer  "shire_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hobbits", ["shire_id"], name: "index_hobbits_on_shire_id"

  create_table "precious", force: true do |t|
    t.integer  "gollum_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "precious", ["gollum_id"], name: "index_precious_on_gollum_id"

  create_table "shires", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
