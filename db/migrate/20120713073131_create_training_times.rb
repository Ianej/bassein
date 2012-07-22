class CreateTrainingTimes < ActiveRecord::Migration
  def self.up
    create_table :training_times do |t|
      t.integer :group_id
      t.string :day_of_the_week
      t.time :time_workout
      t.time :duration_of_workout

      t.timestamps
    end
  end

  def self.down
    drop_table :training_times
  end
end
