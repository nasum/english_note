class HomeController < ApplicationController
  # GET /home
  def index
    redirect_to admin_users_path if User.count == 0
  end
end