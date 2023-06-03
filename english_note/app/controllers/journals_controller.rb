class JournalsController < ApplicationController
  before_action :set_journal, only: %i[ show edit update destroy ]

  # GET /journals
  def index
    @journals = Journal.where(user_id: current_user.id).order(created_at: :desc)
  end

  # GET /journals/1
  def show
    @journal = Journal.find(params[:id])
  end

  # GET /journals/new
  def new
    @journal = Journal.new
  end

  # GET /journals/1/edit
  def edit 
    @journal = Journal.find(params[:id])
  end

  # POST /journals
  def create
    @journal = Journal.new(journal_params)
    @journal.user = current_user
    @journal.study_event = StudyEvent.create(user: current_user, study_event_type: :journal)

    if @journal.save
      redirect_to @journal, notice: "Journal was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /journals/1
  def update
    if @journal.update(journal_params)
      redirect_to @journal, notice: "Journal was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /journals/1
  def destroy
    @journal.destroy
    redirect_to journals_url, notice: "Journal was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_journal
      @journal = Journal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def journal_params
      params.require(:journal).permit(:title, :content)
    end
end
