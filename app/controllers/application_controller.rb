class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :allow_parameters, if: :devise_controller?

  def allow_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
