class Instructor < ActiveRecord::Base
  has_many :trainings, :dependent => :destroy
  has_many :groups, :through => :trainings
  validates :name_instructor, :presence => true,:uniqueness => true
end
