class TrainingTimesController < ApplicationController


  def create
    #@group=Group.find(params[:group_id])
    #@training_time=@group.training_times
    TrainingTime.create(params[:training_time])? (redirect_to group_path(params[:training_time][:group_id])) : (render 'show') #(redirect_to edit_group_path) : render 'groups/edit'

  end

  def destroy
    TrainingTime.find(params[:training_time_id]).destroy
    Training.find_by_training_time_id(params[:training_time_id]).destroy
    redirect_to group_path
  end
end