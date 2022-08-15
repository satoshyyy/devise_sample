class ApplicationController < ActionController::Base
  # ***** 以下を追加 *****
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname])
  end

  # ***** 以上を追加 *****
end
