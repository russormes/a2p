class AssessmentEvidencesController < ApplicationController
  before_action :set_assessment_evidence, only: [:show, :edit, :update, :destroy]

  # GET /assessment_evidences
  # GET /assessment_evidences.json
  def index
    @assessment_evidences = AssessmentEvidence.all
  end

  # GET /assessment_evidences/1
  # GET /assessment_evidences/1.json
  def show
  end

  # GET /assessment_evidences/new
  def new
    @assessment_evidence = AssessmentEvidence.new
  end

  # GET /assessment_evidences/1/edit
  def edit
  end

  # POST /assessment_evidences
  # POST /assessment_evidences.json
  def create
    @assessment_evidence = AssessmentEvidence.new(assessment_evidence_params)

    respond_to do |format|
      if @assessment_evidence.save
        format.html { redirect_to @assessment_evidence, notice: 'Assessment evidence was successfully created.' }
        format.json { render action: 'show', status: :created, location: @assessment_evidence }
      else
        format.html { render action: 'new' }
        format.json { render json: @assessment_evidence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assessment_evidences/1
  # PATCH/PUT /assessment_evidences/1.json
  def update
    respond_to do |format|
      if @assessment_evidence.update(assessment_evidence_params)
        format.html { redirect_to @assessment_evidence, notice: 'Assessment evidence was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @assessment_evidence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assessment_evidences/1
  # DELETE /assessment_evidences/1.json
  def destroy
    @assessment_evidence.destroy
    respond_to do |format|
      format.html { redirect_to assessment_evidences_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assessment_evidence
      @assessment_evidence = AssessmentEvidence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assessment_evidence_params
      params.require(:assessment_evidence).permit(:evidence_file, :comment)
    end
end
