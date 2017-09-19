class WorkGroupPeopleController < ApplicationController
  before_action :set_work_group_person, only: [:show, :edit, :update, :destroy]

  # GET /work_group_people
  # GET /work_group_people.json
  def index
    @work_group_people = WorkGroupPerson.all
  end

  # GET /work_group_people/1
  # GET /work_group_people/1.json
  def show
  end

  # GET /work_group_people/new
  def new
    @work_group_person = WorkGroupPerson.new
  end

  # GET /work_group_people/1/edit
  def edit
  end

  # POST /work_group_people
  # POST /work_group_people.json
  def create
    @work_group_person = WorkGroupPerson.new(work_group_person_params)

    respond_to do |format|
      if @work_group_person.save
        format.html { redirect_to @work_group_person, notice: 'Work group person was successfully created.' }
        format.json { render :show, status: :created, location: @work_group_person }
      else
        format.html { render :new }
        format.json { render json: @work_group_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_group_people/1
  # PATCH/PUT /work_group_people/1.json
  def update
    respond_to do |format|
      if @work_group_person.update(work_group_person_params)
        format.html { redirect_to @work_group_person, notice: 'Work group person was successfully updated.' }
        format.json { render :show, status: :ok, location: @work_group_person }
      else
        format.html { render :edit }
        format.json { render json: @work_group_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_group_people/1
  # DELETE /work_group_people/1.json
  def destroy
    @work_group_person.destroy
    respond_to do |format|
      format.html { redirect_to work_group_people_url, notice: 'Work group person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_group_person
      @work_group_person = WorkGroupPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_group_person_params
      params.require(:work_group_person).permit(:idWorkGroup, :documentNumberPerson)
    end
end
