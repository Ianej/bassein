class Group < ActiveRecord::Base
  attr_accessor :summary_number
  parameter_pool = Pool.first
  s_p = parameter_pool.size_pool.to_i
  n_m = parameter_pool.men_locker_room.to_i
  n_w = parameter_pool.women_locker_room.to_i
  #tut=Group.new(:name_group=>:name_group)
  #{:tut_m => tut.number_of_men.to_i }#+tut.number_of_women
  #{:tut_m=>5}
  #tut_m = tut.number_of_men
  #{:tut=>[:group][:number_of_men]}
  #{:tut=>5}#limit_number_of_group = 4 #@tuttt verno(4)()     self.verno()params[:number_of_womens].to_i(:number_of_womens).ext self([:group][:number_of_womens].)(self.find_by_number_of_womens(:number_of_womens)[:number_of_womens])Group.new(params[:number_of_womens]).new(params[:id]).const_get(:number_of_mens).to_i@group(params[:number_of_mens]) + Group.new(params[:number_of_womens])
  #g_m=Group.new(:group).number_of_men

  attr_accessible :name_group,:number_of_men,:number_of_women,:day_of_the_week,:time_workout
  validates :name_group, :presence => true,:uniqueness => true
  #validates_numericality_of limit_number_of_group, :less_than_or_equal_to => s_p,
  #                           :message => "Chislo mujchin i jenschin v gruupe bol'she rasmera basseina'"
  #validates_numericality_of :verno, :less_than_or_equal_to => s_p, :message => "Chislo #{@tuttt} i #{limit_number_of_group} mujchin i jenschin v gruupe bol'she rasmera basseina #{s_p}"
  #validates_numericality_of :summary_number, :less_than_or_equal_to=> s_p
  validates_numericality_of :number_of_men , :less_than_or_equal_to => n_m#,:message => "TUT_M #{g_m}"
  validates_numericality_of :number_of_women, :less_than_or_equal_to => n_w
  has_many :trainings, :dependent => :destroy
  has_many :instructors, :through => :trainings
  has_many :training_times, :dependent => :destroy
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
