class PupilSensController < ApplicationController
  before_action :set_pupil_sen, only: [:show, :edit, :update, :destroy]

  # GET /pupil_sens
  # GET /pupil_sens.json
  def index
    @pupil_sens = PupilSen.all
  end

  # GET /pupil_sens/1
  # GET /pupil_sens/1.json
  def show
  end

  # GET /pupil_sens/new
  def new
    @pupil_sen = PupilSen.new
  end

  # GET /pupil_sens/1/edit
  def edit
  end

  # POST /pupil_sens
  # POST /pupil_sens.json
  def create
    @pupil_sen = PupilSen.new(pupil_sen_params)

    respond_to do |format|
      if @pupil_sen.save
        format.html { redirect_to @pupil_sen, notice: 'Pupil sen was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pupil_sen }
      else
        format.html { render action: 'new' }
        format.json { render json: @pupil_sen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pupil_sens/1
  # PATCH/PUT /pupil_sens/1.json
  def update
    respond_to do |format|
      if @pupil_sen.update(pupil_sen_params)
        format.html { redirect_to @pupil_sen, notice: 'Pupil sen was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pupil_sen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pupil_sens/1
  # DELETE /pupil_sens/1.json
  def destroy
    @pupil_sen.destroy
    respond_to do |format|
      format.html { redirect_to pupil_sens_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pupil_sen
      @pupil_sen = PupilSen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pupil_sen_params
      params[:pupil_sen]
    end
end
