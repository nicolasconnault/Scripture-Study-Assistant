class CreateTopics < ActiveRecord::Migration
  def self.up
    create_table :topics do |t|
      t.column :name, :string
      t.column :description, :text
      t.timestamps
    end
  end

  def self.down
    drop_table :topics
  end
end
