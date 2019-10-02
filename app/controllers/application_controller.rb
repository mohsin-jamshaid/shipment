class ApplicationController < ActionController::Base
  before_action :authenticate_client!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[markup_key contact_number company_name city username])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[markup_key contact_number company_name city username])
  end
end
