class CabildosController < ApplicationController
  before_action :set_cabildo, only: [:show, :edit, :update, :destroy]

  # GET /cabildos
  # GET /cabildos.json
  def index
    @cabildos = Cabildo.all
  end

  # GET /cabildos/1
  # GET /cabildos/1.json
  def show
  end

  # GET /cabildos/new
  def new
    @cabildo = Cabildo.new
  end

  # GET /cabildos/1/edit
  def edit
  end

  # POST /cabildos
  # POST /cabildos.json
  def create
    @cabildo = Cabildo.new(cabildo_params)

    respond_to do |format|
      if @cabildo.save
        format.html { redirect_to @cabildo, notice: 'Cabildo was successfully created.' }
        format.json { render :show, status: :created, location: @cabildo }
      else
        format.html { render :new }
        format.json { render json: @cabildo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cabildos/1
  # PATCH/PUT /cabildos/1.json
  def update
    respond_to do |format|
      if @cabildo.update(cabildo_params)
        format.html { redirect_to @cabildo, notice: 'Cabildo was successfully updated.' }
        format.json { render :show, status: :ok, location: @cabildo }
      else
        format.html { render :edit }
        format.json { render json: @cabildo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cabildos/1
  # DELETE /cabildos/1.json
  def destroy
    @cabildo.destroy
    respond_to do |format|
      format.html { redirect_to cabildos_url, notice: 'Cabildo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cabildo
      @cabildo = Cabildo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cabildo_params
      params.require(:cabildo).permit(:name, :address, :phone, :workGroup)
    end
end
