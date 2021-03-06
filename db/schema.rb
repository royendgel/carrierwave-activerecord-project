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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120601131704) do

  create_table "article_files", :force => true do |t|
    t.string   "file"
    t.integer  "article_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "article_files", ["article_id"], :name => "index_article_files_on_article_id"

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.string   "file"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "carrier_wave_files", :force => true do |t|
    t.string   "original_filename"
    t.string   "content_type"
    t.string   "extension"
    t.string   "identifier"
    t.string   "size"
    t.binary   "data"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
