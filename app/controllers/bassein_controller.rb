class BasseinController < ApplicationController

  #def sostav_b
  def show
    @bassein1=Bassein1.find(1)
  end

  def izmenenie_b
    (Bassein1.count!=0) ? @bassein1=Bassein1.find(1): @bassein1=Bassein1.new
    #(Bassein1.count!=0) ? @bassein1=Bassein1.find(params[:id]): @bassein1=Bassein1.new

    #@bassein1=Bassein1.new
    #if @bassein1.update_attributes(params[:bassein1])
    #  flash[:success]  ="Vmestimost' izmenena uspeshno!"
    #  redirect_to @bassein1
    #else

    #end
  end
  def update
    @bassein1 = Bassein1.find(params[:id])

    respond_to do |format|
      if @bassein1.update_attributes(params[:bassein1])
        format.html  { redirect_to(root_path,
                                   :notice => 'Parametry basseina obnovleny.') }
        format.json  { head :no_content }
      else
        format.html  { render :action => "izmenenie_b" }
        format.json  { render :json => @bassein1.errors,
                              :status => :unprocessable_entity }
      end
    end
  end

end
