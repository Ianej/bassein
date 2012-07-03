class GroupsController < ApplicationController
  def index
    @title="Spisok grupp"
    @group=Group.all
  end

  def new
    @title="Novaia gruppa"
    @group=Group.new

  end

  def show
    @title="Sostav gruppy"
    @group=Group.find_by_id(params[:id])
  end
  def edit
    @title="Redaktirovanie gruppy"
    @group=Group.find_by_id(params[:id])
  end
  def create
    @group=Group.new(params[:group])
    @tuttt=params[:group][:number_of_mens].to_s.to_i
    if @group.save then
      redirect_to group_path(@group)
    else
      render new_group_path
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
