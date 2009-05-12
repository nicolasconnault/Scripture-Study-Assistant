# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090511201607) do

  create_table "books", :force => true do |t|
    t.string  "name",      :limit => 64, :null => false
    t.integer "volume_id", :limit => 2,  :null => false
  end

  add_index "books", ["volume_id"], :name => "volume_id"

  create_table "chapters", :force => true do |t|
    t.integer "book_id", :limit => 2, :null => false
    t.text    "heading",              :null => false
    t.integer "number",  :limit => 2, :null => false
  end

  add_index "chapters", ["book_id", "number"], :name => "chapters_ibfk_1", :unique => true
  add_index "chapters", ["book_id"], :name => "book_id"

  create_table "references", :force => true do |t|
    t.string   "ref"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "references_themes", :id => false, :force => true do |t|
    t.integer  "theme_id"
    t.integer  "reference_id"
    t.integer  "quality"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "references_themes", ["reference_id"], :name => "index_references_themes_on_reference_id"
  add_index "references_themes", ["theme_id"], :name => "index_references_themes_on_theme_id"

  create_table "themes", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "themes_topics", :id => false, :force => true do |t|
    t.integer  "topic_id"
    t.integer  "theme_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "themes_topics", ["theme_id", "topic_id"], :name => "index_themes_topics_on_topic_id_and_theme_id", :unique => true

  create_table "topics", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "verses", :force => true do |t|
    t.integer "chapter_id", :limit => 2, :null => false
    t.text    "body",                    :null => false
    t.integer "number",     :limit => 2, :null => false
  end

  add_index "verses", ["chapter_id"], :name => "chapter_id"

  create_table "volumes", :force => true do |t|
    t.string "name", :limit => 64, :default => "", :null => false
  end

end
