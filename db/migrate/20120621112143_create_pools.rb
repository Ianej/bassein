class CreatePools < ActiveRecord::Migration
  def self.up
    create_table :pools do |t|
      t.integer :size_pool, :default=>0
      t.integer :mens_locker_room, :default=>0
      t.integer :womens_locker_room, :default=>0

      t.timestamps
    end
  end

  def self.down
    drop_table :pools
  end
end
