class SessionController < ApplicationController

	def new
  end

  def create
  	user = User.find_by_email params[:email]
  	if user = User.authenticate(params[:email], params[:password])
  		session[:user_id] = user.id
  		redirect_to root_url, notice: "You've successfully logged in!"
  	else
  		flash.now.alert = "Email or password is invalid"	
  		render "new"
  	end
  end
  
  def destroy
  	session[:user_id] = nil
  	redirect_to root_url, notice: "Logged out!"
  end		
end
