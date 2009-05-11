class CreateThemesReferences < ActiveRecord::Migration
  def self.up
    create_table :themes_references do |t|
      t.column :theme_id, :int
      t.column :reference_id, :int
      t.column :quality, :int #This will begin as good (1) or bad (0), but may change to a rating from worst (0) to best (*)
      t.column :notes, :text
      t.timestamps
    end

    add_index :themes_references, :theme_id, :unique => false
    add_index :themes_references, :reference_id, :unique => false
  end

  def self.down
    drop_table :themes_references
  end
end
