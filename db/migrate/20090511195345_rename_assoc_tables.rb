class RenameAssocTables < ActiveRecord::Migration
  def self.up
    rename_table :topics_themes, :themes_topics
    rename_table :themes_references, :references_themes
  end

  def self.down
    rename_table :themes_topics, :topics_themes
    rename_table :references_themes, :themes_references
  end
end
