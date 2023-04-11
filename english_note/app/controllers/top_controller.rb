class TopController < ApplicationController
  skip_before_action :require_login, only: %i[index]
  layout 'top'

  def index 
    redirect_to home_path if current_user
  end
end
