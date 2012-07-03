class CreateGroups < ActiveRecord::Migration
  def self.up
    create_table :groups do |t|
      t.string :name_group
      t.integer :number_of_mens, :default=>0
      t.integer :number_of_womens, :default=>0
      t.string :day_of_the_week
      t.time :time_workout

      t.timestamps
    end
  end

  def self.down
    drop_table :groups
  end
end
