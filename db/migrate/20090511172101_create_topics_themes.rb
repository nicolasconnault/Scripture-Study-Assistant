class CreateTopicsThemes < ActiveRecord::Migration
  def self.up
    create_table :topics_themes do |t|
      t.column :topic_id, :int
      t.column :theme_id, :int
      t.column :notes, :text
      t.timestamps
    end
    add_index :topics_themes, [:topic_id, :theme_id], :unique => true
  end

  def self.down
    drop_table :topics_themes
  end
end
