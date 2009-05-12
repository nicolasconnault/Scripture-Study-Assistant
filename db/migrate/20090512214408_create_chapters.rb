class CreateChapters < ActiveRecord::Migration
  def self.up
    create_table "chapters", :force => true do |t|
      t.integer "book_id", :limit => 2, :null => false
      t.text    "heading",              :null => false
      t.integer "number",  :limit => 2, :null => false
    end

    add_index "chapters", ["book_id", "number"], :name => "chapters_ibfk_1", :unique => true
  end

  def self.down
    drop_table :chapters
  end
end
