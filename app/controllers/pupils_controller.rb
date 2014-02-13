class PupilsController < ApplicationController
  def index
    @pupils = Pupil.all
  end

  def import
    begin
      Pupil.import(params[:file])
      redirect_to root_url, notice: "Pupils imported."
    rescue
      redirect_to root_url, notice: "Invalid file format."
    end # end begin. 
  end # end def import.
end # end class.
