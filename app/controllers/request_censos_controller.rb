class RequestCensosController < ApplicationController
  before_action :set_request_censo, only: [:show, :edit, :update, :destroy]
  before_action :authorize_admin, only: [:edit, :update, :destroy]
  helper_method :sort_column, :sort_direction

  # GET /request_censos
  # GET /request_censos.json
  def index
    @request_censos = RequestCenso.paginate(page: params[:page]).order(sort_column + ' ' + sort_direction)
  end

  # GET /request_censos/1
  # GET /request_censos/1.json
  def show
    if current_user.try(:admin?)
      @check_censo = RequestCenso.check_data_two
    else
      @check_censo = RequestCenso.check_data
    end
  end

  # GET /request_censos/new
  def new
    @request_censo = RequestCenso.new
    if  current_user.try(:admin?)
      @check_data = nil
    else
      @check_data = RequestCenso.check_user_request
    end
  end

  # GET /request_censos/1/edit
  def edit
  end

  # POST /request_censos
  # POST /request_censos.json
  def create
    @request_censo = RequestCenso.new(request_censo_params)

    respond_to do |format|
      if @request_censo.save
        format.html { redirect_to @request_censo, notice: 'Request censo was successfully created.' }
        format.json { render :show, status: :created, location: @request_censo }
      else
        format.html { render :new }
        format.json { render json: @request_censo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /request_censos/1
  # PATCH/PUT /request_censos/1.json
  def update
    respond_to do |format|
      if @request_censo.update(request_censo_params)
        format.html { redirect_to @request_censo, notice: 'Request censo was successfully updated.' }
        format.json { render :show, status: :ok, location: @request_censo }
      else
        format.html { render :edit }
        format.json { render json: @request_censo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /request_censos/1
  # DELETE /request_censos/1.json
  def destroy
    @request_censo.destroy
    respond_to do |format|
      format.html { redirect_to request_censos_url, notice: 'Request censo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request_censo
      @request_censo = RequestCenso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_censo_params
      params.require(:request_censo).permit(:name, :lastname, :num_document, :phone, :address, :user_email)
    end

    def sortable_columns
        ['name','lastname', 'num_document', 'phone', 'direction', 'user_email']
    end
    def sort_column
      sortable_columns.include?(params[:sort]) ? params[:sort] : 'name'
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ?  params[:direction] : 'asc'
    end

    def authorize_admin
     return unless !current_user.admin?
     redirect_to root_path, alert: 'Admins only!'
   end
end
