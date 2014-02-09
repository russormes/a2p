class AreaOfFocusController < ApplicationController
  before_action :set_area_of_focu, only: [:show, :edit, :update, :destroy]

  # GET /area_of_focus
  # GET /area_of_focus.json
  def index
    @area_of_focus = AreaOfFocu.all
  end

  # GET /area_of_focus/1
  # GET /area_of_focus/1.json
  def show
  end

  # GET /area_of_focus/new
  def new
    @area_of_focu = AreaOfFocu.new
  end

  # GET /area_of_focus/1/edit
  def edit
  end

  # POST /area_of_focus
  # POST /area_of_focus.json
  def create
    @area_of_focu = AreaOfFocu.new(area_of_focu_params)

    respond_to do |format|
      if @area_of_focu.save
        format.html { redirect_to @area_of_focu, notice: 'Area of focu was successfully created.' }
        format.json { render action: 'show', status: :created, location: @area_of_focu }
      else
        format.html { render action: 'new' }
        format.json { render json: @area_of_focu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /area_of_focus/1
  # PATCH/PUT /area_of_focus/1.json
  def update
    respond_to do |format|
      if @area_of_focu.update(area_of_focu_params)
        format.html { redirect_to @area_of_focu, notice: 'Area of focu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @area_of_focu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /area_of_focus/1
  # DELETE /area_of_focus/1.json
  def destroy
    @area_of_focu.destroy
    respond_to do |format|
      format.html { redirect_to area_of_focus_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_area_of_focu
      @area_of_focu = AreaOfFocu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def area_of_focu_params
      params.require(:area_of_focu).permit(:area_of_focus)
    end
end
