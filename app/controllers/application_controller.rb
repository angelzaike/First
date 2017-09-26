class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
 

  rescue_from CanCan::AccessDenied do |exception|
  redirect_to main_app.root_url, alert: exception.message
end

protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit([:sign_up, :account_update, keys: [:first_name]])
  end

  private

  def require_login
    unless current_user
      redirect_to login_url
    end
  end
end




