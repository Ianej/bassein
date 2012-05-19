class CreateBassein1s < ActiveRecord::Migration
  def self.up
    create_table :bassein1s do |t|
      t.integer :razmer_b
      t.integer :razdevalka_m
      t.integer :razdevalka_d

      t.timestamps
    end
  end

  def self.down
    drop_table :bassein1s
  end
end
