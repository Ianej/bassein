class Group < ActiveRecord::Base
  #attr_accessor :number_of_womens
  parameter_pool = Pool.first
  s_p = parameter_pool.size_pool.to_i
  n_m = parameter_pool.mens_locker_room.to_i
  n_w = parameter_pool.womens_locker_room.to_i
  #limit_number_of_group = 4 #@tuttt verno(4)()     self.verno()params[:number_of_womens].to_i(:number_of_womens).ext self([:group][:number_of_womens].)(self.find_by_number_of_womens(:number_of_womens)[:number_of_womens])Group.new(params[:number_of_womens]).new(params[:id]).const_get(:number_of_mens).to_i@group(params[:number_of_mens]) + Group.new(params[:number_of_womens])
  attr_accessible :name_group,:number_of_mens,:number_of_womens,:day_of_the_week,:time_workout
  validates :name_group, :presence => true,:uniqueness => true
  #validates_numericality_of limit_number_of_group, :less_than_or_equal_to => s_p,
  #                           :message => "Chislo mujchin i jenschin v gruupe bol'she rasmera basseina'"
  #validates_numericality_of :verno, :less_than_or_equal_to => s_p, :message => "Chislo #{@tuttt} i #{limit_number_of_group} mujchin i jenschin v gruupe bol'she rasmera basseina #{s_p}"
  validates_numericality_of :number_of_mens, :less_than_or_equal_to => n_m
  validates_numericality_of :number_of_womens, :less_than_or_equal_to => n_w
  def verno
    limit_number_of_group = @tuttt
    return limit_number_of_group
        if @tuttt.blank? then
          @tuttt= 100#
        else
          0
        end
  end
end
