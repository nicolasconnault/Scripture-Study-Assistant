class CreateVolumes < ActiveRecord::Migration
  def self.up
    create_table "volumes", :force => true do |t|
      t.string "name", :limit => 64, :default => "", :null => false
    end
  end

  def self.down
    drop_table :volumes
  end
end
