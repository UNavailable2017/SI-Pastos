class CensosController < ApplicationController
  before_action :set_censo, only: [:show, :edit, :update, :destroy]
  # GET /censos
  # GET /censos.json

  def index
    @censos = Censo.paginate(:page => params[:page], :per_page => 20)
  end

  # GET /censos/1
  # GET /censos/1.json
  def show
  end

  # GET /censos/new
  def new
    @censo = Censo.new
  end

  # GET /censos/1/edit
  def edit
  end

  # POST /censos
  # POST /censos.json
  def create
    @censo = Censo.new(censo_params)

    respond_to do |format|
      if @censo.save
        format.html { redirect_to @censo, notice: 'Censo was successfully created.' }
        format.json { render :show, status: :created, location: @censo }
      else
        format.html { render :new }
        format.json { render json: @censo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /censos/1
  # PATCH/PUT /censos/1.json
  def update
    respond_to do |format|
      if @censo.update(censo_params)
        format.html { redirect_to @censo, notice: 'Censo was successfully updated.' }
        format.json { render :show, status: :ok, location: @censo }
      else
        format.html { render :edit }
        format.json { render json: @censo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /censos/1
  # DELETE /censos/1.json
  def destroy
    @censo.destroy
    respond_to do |format|
      format.html { redirect_to censos_url, notice: 'Censo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_censo
      @censo = Censo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def censo_params
      params.require(:censo).permit(:date, :numberOfChildren, :originResguardo, :levelStudies, :profession, :entry, :person_id)
    end
end
