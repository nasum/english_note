class ApplicationController < ActionController::Base
  before_action :require_login

  private

  def not_authenticated
    redirect_to login_path, alert: 'Please login first'
  end

  def redirect_to_root_if_exist_user
    redirect_to root_path if User.count > 0
  end

  def is_admin?
    current_user.admin?
  end
end
