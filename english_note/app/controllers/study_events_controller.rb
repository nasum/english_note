class StudyEventsController < ApplicationController
  before_action :set_study_event, only: %i[show edit update destroy]

  # GET /study_events
  def index
    @study_events = StudyEvent.all
  end
end
