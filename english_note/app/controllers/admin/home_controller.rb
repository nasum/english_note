class Admin::HomeController < ApplicationController
  layout 'admin'

  before_action :require_login
  before_action :is_admin?

  def index; end
end
