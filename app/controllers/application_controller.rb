# Controller for user user sign up and sign in to the movie store.
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  add_flash_types :danger, :info, :success, :warning, :alert
  
  def after_sign_in_path_for(*)
    movies_path(current_user)
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname,
                                                       :lastname,
                                                       :email,
                                                       :password])
  end
end
