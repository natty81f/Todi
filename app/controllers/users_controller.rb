class UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end	


	def update
		@user = User.find_by_id params[:id]
		@user.update_attributes(user_params)
		redirect_to root_url, notice: "You have updated your profile!"
	end	



	def user_params
    params.require( :user ).permit( 
    	:email,
    	:password, 
    	:password_confirmation,
    	:username,
    	:name
      )
  end
end
