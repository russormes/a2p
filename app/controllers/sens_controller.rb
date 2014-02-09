class SensController < ApplicationController
  before_action :set_sen, only: [:show, :edit, :update, :destroy]

  # GET /sens
  # GET /sens.json
  def index
    @sens = Sen.all
  end

  # GET /sens/1
  # GET /sens/1.json
  def show
  end

  # GET /sens/new
  def new
    @sen = Sen.new
  end

  # GET /sens/1/edit
  def edit
  end

  # POST /sens
  # POST /sens.json
  def create
    @sen = Sen.new(sen_params)

    respond_to do |format|
      if @sen.save
        format.html { redirect_to @sen, notice: 'Sen was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sen }
      else
        format.html { render action: 'new' }
        format.json { render json: @sen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sens/1
  # PATCH/PUT /sens/1.json
  def update
    respond_to do |format|
      if @sen.update(sen_params)
        format.html { redirect_to @sen, notice: 'Sen was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sens/1
  # DELETE /sens/1.json
  def destroy
    @sen.destroy
    respond_to do |format|
      format.html { redirect_to sens_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sen
      @sen = Sen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sen_params
      params.require(:sen).permit(:sen_code)
    end
end
