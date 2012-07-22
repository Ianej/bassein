class Training < ActiveRecord::Base
  belongs_to :group
  belongs_to :instructor
  belongs_to :training_time
  validates :instructor_id, :presence => true
  validates :group_id, :presence => true
end
