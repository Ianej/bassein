class InstructorsController < ApplicationController
  def index
    @instructor = Instructor.all
    #@group=Group.first

    #@in_i=Instructor.find(7)
    #@i_i= @group.trainings
    #@i_i1= @group.trainings.find_by_instructor_id(@in_i.id)

  end
  def new
    @instructor=Instructor.new

  end

  def edit
    @instructor=Instructor.find(params[:id])
  end

  def show
    @instructor=Instructor.find(params[:id])
    @training_times=TrainingTime.new
  end

  def destroy
     @instructor=Instructor.find(params[:id])
     @instructor.destroy
    redirect_to  instructors_path
  end

  def update
     @instructor=Instructor.find(params[:id])
    @instructor.update_attributes(params[:instructor]) ? (redirect_to instructor_path)  : (render 'edit')
  end

  def create
    @instructor=Instructor.new(params[:instructor])
    @instructor.save ? (redirect_to instructor_path(@instructor)) : (render 'new')
  end
end
