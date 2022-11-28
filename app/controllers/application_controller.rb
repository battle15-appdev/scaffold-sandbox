class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:username, :first_name, :last_name, :avatar_url])
    
    devise_parameter_sanitizer.permit(:account_update, :keys => [:first_name, :last_name, :avatar_url])
  end
end
