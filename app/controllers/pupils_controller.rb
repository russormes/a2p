class PupilsController < ApplicationController
  def index
    @pupils = Pupil.all
  end

  def import
    Pupil.import(params[:file])
    redirect_to root_url, notice: "Pupils imported."
  end
end
