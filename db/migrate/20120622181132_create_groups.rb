class CreateGroups < ActiveRecord::Migration
  def self.up
    create_table :groups do |t|
      t.string :name_group
      t.integer :number_of_men, :default=>0
      t.integer :number_of_women, :default=>0
      t.timestamps
    end
  end

  def self.down
    drop_table :groups
  end
end
