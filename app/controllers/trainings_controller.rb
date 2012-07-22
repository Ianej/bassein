class TrainingsController < ApplicationController
  def create
    if params[:trainings].blank?
      @group=Group.find(params[:group_id])
      @training_time=@group.training_times
      @training_time.each do |training_time|
        @training=@group.trainings.find_by_training_time_id(training_time.id)
        if @training.nil?
          Training.create(:instructor_id=>params[:instructor_id],:group_id=>params[:group_id],:training_time_id=>training_time.id)
        else
          @training.update_attributes(:instructor_id=>params[:instructor_id])
        end

      end
      redirect_to instructor_groups_path(params[:instructor_id])
#Training.create(:group_id=>@group.id,:instructor_id=>@instructor.id)
    else
      @group = Group.find(params[:trainings][:group_id])
      @instructor =Instructor.find(params[:trainings][:instructor_id])
      #@training=

      Training.create(params[:trainings])
      #@training.save
      redirect_to instructor_group_path(@instructor,@group)
    end

  end

  def destroy
    #@instructor=Instructor.find(params[:instructor_id])
    #@group=Group.find(params[:group_id])
    #@instructor=Instructor.find(params[:instructor_id])
    #@instructor.trainings.find_by_group_id(@group.id).destroy
    #@group=Group.find(params[:trainings][:group_id])
    #Training.find_by_instructor_id_and_group_id_and_training_time_id(*params[:trainings]).destroy
    if params[:trainings].nil?
      Training.find_by_instructor_id_and_group_id_and_training_time_id(params[:instructor_id],params[:group_id],params[:training_time_id]).destroy
      redirect_to instructor_path(params[:instructor_id])
    else
      Training.find_by_instructor_id_and_group_id_and_training_time_id(params[:trainings][:instructor_id],params[:trainings][:group_id],params[:trainings][:training_time_id]).destroy
      redirect_to instructor_group_path(params[:trainings][:instructor_id],params[:trainings][:group_id])
    end

    #@training=Training.find_all_by_instructor_id(@instructor.id)
    #@training.find_all_by_group_id(@group.id)
    #@training.group_id(@group.id).destroy
    #Training.find(params[:instructor][:instructor_id],params[:group][:group_id]).delete
  end
  def update
    @training=Training.find_by_instructor_id_and_group_id_and_training_time_id(params[:instructor_id_old],params[:trainings][:group_id],params[:trainings][:training_time_id])
    @training.update_attributes(params[:trainings])
    redirect_to instructor_group_path(params[:trainings][:instructor_id],params[:trainings][:group_id])
  end

end
