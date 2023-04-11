class AdminUserController < ApplicationController
  before_action :redirect_to_root_if_exist_user
  skip_before_action :require_login, only: [:new, :create]

  def index
    @users = User.all
  end

   def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.admin = true
    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
