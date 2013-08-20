class SiteController < ApplicationController
# before_action :is_authenticated, only: [ :index ]
# before_action :require_login

	def index
		@user = current_user
		@message = Message.new
	end

	# GET / - Me Page
	def me
		@user = current_user
	end


	# private

	# def require_login
 #     if current_user.nil?
 #      flash[:error] = "You must be logged in to access this section"
 #      redirect_to login_path 
 #    	end
 #  end

end
