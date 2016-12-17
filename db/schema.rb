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

ActiveRecord::Schema.define(version: 20161217094046) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "h1_contents", force: :cascade do |t|
    t.string   "h1_data"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "scrap_content_id"
  end

  create_table "h2_contents", force: :cascade do |t|
    t.string   "h2_data"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "scrap_content_id"
  end

  create_table "h3_contents", force: :cascade do |t|
    t.string   "h3_data"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "scrap_content_id"
  end

  create_table "link_contents", force: :cascade do |t|
    t.string   "link"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "scrap_content_id"
  end

  create_table "scrap_contents", force: :cascade do |t|
    t.string   "main_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scrap_data", force: :cascade do |t|
    t.string   "h1_data"
    t.string   "h2_data"
    t.string   "h3_data"
    t.string   "links"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
