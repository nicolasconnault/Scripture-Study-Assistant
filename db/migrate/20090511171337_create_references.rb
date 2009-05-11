class CreateReferences < ActiveRecord::Migration
  def self.up
    create_table :references do |t|
      t.column :ref, :string
      t.column :content, :text
      t.timestamps
    end
  end

  def self.down
    drop_table :references
  end
end
