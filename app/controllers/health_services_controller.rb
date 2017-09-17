class HealthServicesController < ApplicationController
  before_action :set_health_service, only: [:show, :edit, :update, :destroy]

  # GET /health_services
  # GET /health_services.json
  def index
    @health_services = HealthService.all
  end

  # GET /health_services/1
  # GET /health_services/1.json
  def show
  end

  # GET /health_services/new
  def new
    @health_service = HealthService.new
  end

  # GET /health_services/1/edit
  def edit
  end

  # POST /health_services
  # POST /health_services.json
  def create
    @health_service = HealthService.new(health_service_params)

    respond_to do |format|
      if @health_service.save
        format.html { redirect_to @health_service, notice: 'Health service was successfully created.' }
        format.json { render :show, status: :created, location: @health_service }
      else
        format.html { render :new }
        format.json { render json: @health_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /health_services/1
  # PATCH/PUT /health_services/1.json
  def update
    respond_to do |format|
      if @health_service.update(health_service_params)
        format.html { redirect_to @health_service, notice: 'Health service was successfully updated.' }
        format.json { render :show, status: :ok, location: @health_service }
      else
        format.html { render :edit }
        format.json { render json: @health_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /health_services/1
  # DELETE /health_services/1.json
  def destroy
    @health_service.destroy
    respond_to do |format|
      format.html { redirect_to health_services_url, notice: 'Health service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_health_service
      @health_service = HealthService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def health_service_params
      params.require(:health_service).permit(:name, :admissionDate, :departureDate, :regime)
    end
end
