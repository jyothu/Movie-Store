class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  add_flash_types :danger, :info, :success, :warning
  
  def after_sign_in_path_for(resource)
    # dashboard_path(current_user) #your path
    movies_path(current_user)
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname, :email, :password])
  end

end
