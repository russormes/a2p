class PupilGroupsController < ApplicationController
  before_action :set_pupil_group, only: [:show, :edit, :update, :destroy]

  # GET /pupil_groups
  # GET /pupil_groups.json
  def index
    @pupil_groups = PupilGroup.all
  end

  # GET /pupil_groups/1
  # GET /pupil_groups/1.json
  def show
  end

  # GET /pupil_groups/new
  def new
    @pupil_group = PupilGroup.new
  end

  # GET /pupil_groups/1/edit
  def edit
  end

  # POST /pupil_groups
  # POST /pupil_groups.json
  def create
    @pupil_group = PupilGroup.new(pupil_group_params)

    respond_to do |format|
      if @pupil_group.save
        format.html { redirect_to @pupil_group, notice: 'Pupil group was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pupil_group }
      else
        format.html { render action: 'new' }
        format.json { render json: @pupil_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pupil_groups/1
  # PATCH/PUT /pupil_groups/1.json
  def update
    respond_to do |format|
      if @pupil_group.update(pupil_group_params)
        format.html { redirect_to @pupil_group, notice: 'Pupil group was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pupil_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pupil_groups/1
  # DELETE /pupil_groups/1.json
  def destroy
    @pupil_group.destroy
    respond_to do |format|
      format.html { redirect_to pupil_groups_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pupil_group
      @pupil_group = PupilGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pupil_group_params
      params[:pupil_group]
    end
end
