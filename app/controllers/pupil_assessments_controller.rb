class PupilAssessmentsController < ApplicationController
  before_action :set_pupil_assessment, only: [:show, :edit, :update, :destroy]

  # GET /pupil_assessments
  # GET /pupil_assessments.json
  def index
    @pupil_assessments = PupilAssessment.all
  end

  # GET /pupil_assessments/1
  # GET /pupil_assessments/1.json
  def show
  end

  # GET /pupil_assessments/new
  def new
    @pupil_assessment = PupilAssessment.new
  end

  # GET /pupil_assessments/1/edit
  def edit
  end

  # POST /pupil_assessments
  # POST /pupil_assessments.json
  def create
    @pupil_assessment = PupilAssessment.new(pupil_assessment_params)

    respond_to do |format|
      if @pupil_assessment.save
        format.html { redirect_to @pupil_assessment, notice: 'Pupil assessment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @pupil_assessment }
      else
        format.html { render action: 'new' }
        format.json { render json: @pupil_assessment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pupil_assessments/1
  # PATCH/PUT /pupil_assessments/1.json
  def update
    respond_to do |format|
      if @pupil_assessment.update(pupil_assessment_params)
        format.html { redirect_to @pupil_assessment, notice: 'Pupil assessment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @pupil_assessment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pupil_assessments/1
  # DELETE /pupil_assessments/1.json
  def destroy
    @pupil_assessment.destroy
    respond_to do |format|
      format.html { redirect_to pupil_assessments_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pupil_assessment
      @pupil_assessment = PupilAssessment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pupil_assessment_params
      params.require(:pupil_assessment).permit(:date_assessed, :comment, :present)
    end
end
