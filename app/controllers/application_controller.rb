class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar, :username, :first_name, :last_name, :age, :bio])
    devise_parameter_sanitizer.permit(:account_update, keys: [:avatar, :username, :first_name, :last_name, :age, :bio])

  end
end
