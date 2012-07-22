class GroupsController < ApplicationController
  def index
    @title="Spisok grupp"
    @group=Group.all
    @instructor = Instructor.find_by_id(params[:instructor_id])
  end

  def new
    @title="Novaia gruppa"
    @group=Group.new

  end

  def show
    @title="Sostav gruppy"
    @group=Group.find_by_id(params[:id])
    @training_time=@group.training_times
    @instructor=Instructor.find_by_id(params[:instructor_id])
    @instructor_group=@group.instructors
    @training=@group.trainings
  end
  def edit
    @title="Redaktirovanie gruppy"
    @group=Group.find_by_id(params[:id])
    #@index_g=params[:index_g]
  end
  def create
    @group=Group.new(params[:group])
    #{:tut=>5}

    #@tuttt1=params[:group][:number_of_men].to_s.to_i
    #@tuttt=Group.new(params[:group])
    if @group.save then
      redirect_to group_path(@group)
    else
      render 'new'
    end

  end
  def update
     @group=Group.find(params[:id])
    @group.update_attributes(params[:group]) ? (redirect_to group_path) : (render 'edit')#(@group))
  end
  def destroy
    Group.find(params[:id]).destroy
    redirect_to groups_path
  end


end
