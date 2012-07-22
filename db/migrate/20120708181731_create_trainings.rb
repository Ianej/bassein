class CreateTrainings < ActiveRecord::Migration
  def self.up
    create_table :trainings do |t|
      t.integer :instructor_id
      t.integer :group_id
      t.integer :training_time_id
      t.timestamps
    end
  end

  def self.down
    drop_table :trainings
  end
end
