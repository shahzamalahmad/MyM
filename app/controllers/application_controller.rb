class ApplicationController < ActionController::Base
	before_action :authenticate_user!, except: [:index, :show, :about, :login]

  before_action :configure_permitted_parameters, if: :devise_controller?




  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :role, :password, :email, :imam_name, :requirement, :user_id])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :role, :password, :imam_name, :requirement, :qualification, :address, :resion, :contact_number, :user_id])
  end
end
