class ApplicationController < ActionController::Base
	before_action :authenticate_user!, except: [:index, :show, :about]
	# before_filter :authenticate_user!
end
