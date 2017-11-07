class CandidatesController < ApplicationController
  before_action :set_candidate, only: [:show, :edit, :update, :destroy]

  # GET /candidates
  # GET /candidates.json
   def index
    @candidates = Candidate.get_data
  end

  # GET /candidates/1
  # GET /candidates/1.json
  def show
  end

  # GET /candidates/new
  def new
    @candidate = Candidate.new
    @get_id_election = Election.id_election
    @count_id_elec = Election.count_id_elec
  end

  # GET /candidates/1/edit
  def edit
  end

  # POST /candidates
  # POST /candidates.json
  def create
    @candidate = Candidate.new(candidate_params)

    respond_to do |format|
      if @candidate.save
        format.html { redirect_to new_candidate_path, notice: 'Candidate was successfully created.' }
        format.json { render :new, status: :created, location: @candidate }
      else
        format.html { render :new }
        format.json { render json: @candidate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /candidates/1
  # PATCH/PUT /candidates/1.json
  def update
    respond_to do |format|
      if @candidate.update(candidate_params)
        format.html { redirect_to @candidate, notice: 'Candidate was successfully updated.' }
        format.json { render :show, status: :ok, location: @candidate }
      else
        format.html { render :edit }
        format.json { render json: @candidate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /candidates/1
  # DELETE /candidates/1.json
  def destroy
    @candidate.destroy
    respond_to do |format|
      format.html { redirect_to candidates_url, notice: 'Candidate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upvote
      @candid.upvote_from current_user
      redirect_to :back
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_candidate
      @candidate = Candidate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def candidate_params
      params.require(:candidate).permit(:idCandidate, :votes, :person_id, :election_id)
    end
end
