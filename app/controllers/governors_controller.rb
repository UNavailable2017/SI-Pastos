class GovernorsController < ApplicationController
  before_action :set_governor, only: [:show, :edit, :update, :destroy]

  # GET /governors
  # GET /governors.json
  def index
    @governors = Governor.all
  end

  # GET /governors/1
  # GET /governors/1.json
  def show
  end

  # GET /governors/new
  def new
    @governor = Governor.new
  end

  # GET /governors/1/edit
  def edit
  end

  # POST /governors
  # POST /governors.json
  def create
    @governor = Governor.new(governor_params)

    respond_to do |format|
      if @governor.save
        format.html { redirect_to @governor, notice: 'Governor was successfully created.' }
        format.json { render :show, status: :created, location: @governor }
      else
        format.html { render :new }
        format.json { render json: @governor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /governors/1
  # PATCH/PUT /governors/1.json
  def update
    respond_to do |format|
      if @governor.update(governor_params)
        format.html { redirect_to @governor, notice: 'Governor was successfully updated.' }
        format.json { render :show, status: :ok, location: @governor }
      else
        format.html { render :edit }
        format.json { render json: @governor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /governors/1
  # DELETE /governors/1.json
  def destroy
    @governor.destroy
    respond_to do |format|
      format.html { redirect_to governors_url, notice: 'Governor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_governor
      @governor = Governor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def governor_params
      params.require(:governor).permit(:idGovernor, :name, :govermentperiod, :nameCabildo, :cabildoAddress, :cabildoPhone, :documentGovernor)
    end
end
