class AddAbbrevToBooks < ActiveRecord::Migration
  def self.up
    add_column :books, :abbreviations, :string
  end

  def self.down
    remove_column :books, :abbreviations
  end
end
