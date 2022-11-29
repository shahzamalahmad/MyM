class ApplicationController < ActionController::Base
	before_action :authenticate_user!, except: [:index, :show, :about, :login]



	 private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :admin, :password, :email, :imam_name, :requirement, :user_id, :role)
    end
end
