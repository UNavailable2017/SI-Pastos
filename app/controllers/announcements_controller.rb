class AnnouncementsController < ApplicationController
  before_action :set_announcement, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction

  # GET /announcements
  # GET /announcements.json
  def index
    @announcements = Announcement.paginate(page: params[:page]).order(sort_column + ' ' + sort_direction)
  end

  # GET /announcements/1
  # GET /announcements/1.json
  def show
  end

  # GET /announcements/new
  def new
    @announcement = Announcement.new
  end

  # GET /announcements/1/edit
  def edit
  end

  # POST /announcements
  # POST /announcements.json
  def create
    @announcement = Announcement.new(announcement_params)

    respond_to do |format|
      if @announcement.save
        format.html { redirect_to @announcement, notice: 'La oferta fue creada exitosamente.' }
        format.json { render :show, status: :created, location: @announcement }
      else
        format.html { render :new }
        format.json { render json: @announcement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /announcements/1
  # PATCH/PUT /announcements/1.json
  def update
    respond_to do |format|
      if @announcement.update(announcement_params)
        format.html { redirect_to @announcement, notice: 'La oferta fue actualizada exitosamente.' }
        format.json { render :show, status: :ok, location: @announcement }
      else
        format.html { render :edit }
        format.json { render json: @announcement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /announcements/1
  # DELETE /announcements/1.json
  def destroy
    @announcement.destroy
    respond_to do |format|
      format.html { redirect_to announcements_url, notice: 'La oferta fue eliminada exitosamente.' }
      format.json { head :no_content }
    end
  end

  def remove_olds
    AnnouncementCleanerJob.perform_later
    redirect_to announcements_path
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_announcement
    @announcement = Announcement.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def announcement_params
    params.require(:announcement).permit(:publicationDate, :deadline, :announcementType, :announcementInformation, :person_id)
  end

  def sortable_columns
    ['deadline', "\"publicationDate\"", "\"announcementType\"", "\"announcementInformation\""]
  end

  def sort_column
    sortable_columns.include?(params[:sort]) ? params[:sort] : "\"publicationDate\""
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : 'desc'
  end

end
