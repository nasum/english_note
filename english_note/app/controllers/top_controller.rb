class TopController < ApplicationController
  skip_before_action :require_login, only: %i[index]
  layout 'top'

  def index 
    if current_user
      redirect_to home_path
    end
  end
end
