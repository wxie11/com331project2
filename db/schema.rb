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

ActiveRecord::Schema.define(version: 2019_04_11_222643) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "complaints", force: :cascade do |t|
    t.date "date"
    t.string "location"
    t.string "department"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "reporter_id"
    t.index ["reporter_id"], name: "index_complaints_on_reporter_id"
  end

  create_table "complaints_reporters", id: false, force: :cascade do |t|
    t.integer "complaint_id", null: false
    t.integer "reporter_id", null: false
    t.index ["complaint_id"], name: "index_complaints_reporters_on_complaint_id"
    t.index ["reporter_id"], name: "index_complaints_reporters_on_reporter_id"
  end

  create_table "reporters", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "a_number"
    t.string "school_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "uid", default: ""
    t.string "nickname", default: ""
    t.string "email", default: ""
    t.string "name", default: ""
  end

end
