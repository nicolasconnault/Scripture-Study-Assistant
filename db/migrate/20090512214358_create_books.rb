class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table "books", :force => true do |t|
      t.string  "name",      :limit => 64, :null => false
      t.integer "volume_id", :limit => 2,  :null => false
    end

    add_index "books", ["volume_id"], :name => "volume_id"
  end

  def self.down
    drop_table :books
  end
end
