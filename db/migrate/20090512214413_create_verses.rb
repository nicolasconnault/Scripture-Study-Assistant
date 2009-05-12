class CreateVerses < ActiveRecord::Migration
  def self.up
    create_table "verses", :force => true do |t|
      t.integer "chapter_id", :limit => 2, :null => false
      t.text    "body",                    :null => false
      t.integer "number",     :limit => 2, :null => false
    end

    add_index "verses", ["chapter_id"], :name => "chapter_id"
  end

  def self.down
    drop_table :verses
  end
end
