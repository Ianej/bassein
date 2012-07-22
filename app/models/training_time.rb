class TrainingTime < ActiveRecord::Base
  belongs_to :group
  belongs_to :training, :dependent => :destroy
  validates :group_id, :presence => true
end
