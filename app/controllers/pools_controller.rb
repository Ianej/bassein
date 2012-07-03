class PoolsController < ApplicationController

  #def sostav_b
  def show
    @pool=Pool.first#find_by_id(1).
    (@pool== nil) ? create : @pool
  end

  def edit
    @pool=Pool.first #.find(params[:id])
    #(Bassein1.count!=0) ? @bassein1=Bassein1.find(params[:id]): @bassein1=Bassein1.new

    #@bassein1=Bassein1.new
    #if @bassein1.update_attributes(params[:bassein1])
    #  flash[:success]  ="Vmestimost' izmenena uspeshno!"
    #  redirect_to @bassein1
    #else

    #end
  end

  def create
    @pool=Pool.new(params[:pool])
    @pool.save ? (redirect_to root_path) : (redirect_to edit_pools_path)

  end

  def update
    @pool = Pool.first#params[:id=>1])
    @pool.update_attributes(params[:pool])
    redirect_to(root_path, notice: 'Parametry basseina obnovleny.')
    #respond_to do |format|
      #if @pool.update_attributes(params[:pool])
      #  format.html {  }
      #  format.json { head :no_content }
      #else
      #  format.html { render :action => "edit" }
      #  format.json { render :json => @pool.errors,
      #                       :status => :unprocessable_entity }
      #end
    #end
  end

end
