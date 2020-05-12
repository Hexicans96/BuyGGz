class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
     rescue_from CanCan::AccessDenied do |exception|
      flash[:authorization_error] = "Not authorized to perform that action ❌"
      redirect_to root_path
     end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
