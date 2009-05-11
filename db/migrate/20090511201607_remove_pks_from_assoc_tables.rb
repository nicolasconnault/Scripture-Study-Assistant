class RemovePksFromAssocTables < ActiveRecord::Migration
  def self.up
    drop_table :themes_topics
    drop_table :references_themes
    create_table :themes_topics, :id => false do |t|
      t.column :topic_id, :int
      t.column :theme_id, :int
      t.column :notes, :text
      t.timestamps
    end
    add_index :themes_topics, [:topic_id, :theme_id], :unique => true

    create_table :references_themes, :id => false do |t|
      t.column :theme_id, :int
      t.column :reference_id, :int
      t.column :quality, :int #This will begin as good (1) or bad (0), but may change to a rating from worst (0) to best (*)
      t.column :notes, :text
      t.timestamps
    end

    add_index :references_themes, :theme_id, :unique => false
    add_index :references_themes, :reference_id, :unique => false
  end

  def self.down
    #Supposed to re-recreate PK :id fieds here but not sure how
  end
end
