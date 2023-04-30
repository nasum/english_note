class HomeController < ApplicationController
  # GET /home
  def index
    @word = Word.new
    @events = StudyEvent.where(user_id: current_user.id).order(created_at: :desc).limit(10)
  end
end
