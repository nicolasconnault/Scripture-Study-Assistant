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

ActiveRecord::Schema.define(:version => 20090511172101) do

  create_table "references", :force => true do |t|
    t.string   "ref"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "themes", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "themes_references", :force => true do |t|
    t.integer  "theme_id"
    t.integer  "reference_id"
    t.integer  "quality"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "themes_references", ["reference_id"], :name => "index_themes_references_on_reference_id"
  add_index "themes_references", ["theme_id"], :name => "index_themes_references_on_theme_id"

  create_table "topics", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topics_themes", :force => true do |t|
    t.integer  "topic_id"
    t.integer  "theme_id"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
