class TopController < ApplicationController
  skip_before_action :require_login, only: %i[index]
  layout 'top'
end
