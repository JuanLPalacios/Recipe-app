class ApplicationController < ActionController::Base
  before_action :allow_parameters, if: :devise_controller?

  def current_user
    User.first
  end

  def allow_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
