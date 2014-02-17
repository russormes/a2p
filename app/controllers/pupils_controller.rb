class PupilsController < ApplicationController
  def index
    @pupils = Pupil.all
  end
  
  def new
  end
  
  def create
  @pupil = Pupil.new(pupil_params)
  @pupil.save
  redirect_to @pupil
  end
  
  def destroy
  @pupil = Pupil.find(params[:id])
  @pupil.destroy
    redirect_to root_path, notice: "Pupil destroyed"
end
   
  def import
    begin
      Pupil.import(params[:file])
      redirect_to root_url, notice: "Pupils imported."
    rescue
      redirect_to root_url, notice: "Invalid file format."
    end # end begin. 
    
 
  end # end def import.
  
  private
  def pupil_params
    params.require(:pupil).permit(:given_name, :family_name)
  end
  
def show
  @pupil = Pupil.find(params[:id])
end
  
end # end class.
