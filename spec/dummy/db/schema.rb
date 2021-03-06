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

ActiveRecord::Schema.define(version: 20140623115919) do

  create_table "no_cms_news_categories", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "no_cms_news_categories_items", id: false, force: true do |t|
    t.integer  "category_id"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "no_cms_news_category_translations", force: true do |t|
    t.integer "no_cms_news_category_id"
    t.string  "locale"
    t.string  "title"
  end

  add_index "no_cms_news_category_translations", ["no_cms_news_category_id"], name: "index_no_cms_news_category_translations_on_category_id"

  create_table "no_cms_news_item_translations", force: true do |t|
    t.integer  "no_cms_news_item_id"
    t.string   "locale"
    t.string   "title"
    t.string   "slug"
    t.text     "body"
    t.boolean  "draft",               default: false
    t.datetime "published_at"
  end

  add_index "no_cms_news_item_translations", ["no_cms_news_item_id"], name: "index_no_cms_news_item_translations_on_no_cms_news_item_id"

  create_table "no_cms_news_items", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
