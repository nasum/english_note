class TopController < ApplicationController
  skip_before_action :require_login, only: %i[index]
  layout 'top'

  def index 
    redirect_to home_path if current_user
    redirect_to new_admin_user_path if User.all().count == 0
  end
end
