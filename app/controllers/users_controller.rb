class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
	end


	#  private
    # def user_params
    #   params.require(:user).permit(:first_name, :last_name, :admin, :password, :email, :imam_name, :requirement, :user_id)
    # end
end
