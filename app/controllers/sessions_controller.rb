class SessionsController < ApplicationController
  # skip_before_filter :require_login, :only => [:new, :create]

	def new
  end

  def create
  user = User.authenticate params[:session][:email], params[:session][:password]
  if user 
    puts params[:user_id]
    
    session[:user_id] = user.id
    redirect_to home_path, notice: "You've successfully logged in!"
  else
    flash.now[:error] = "Wrong email or password. Try again?"
    render :new
  end
end

def destroy
  session[:user_id] = nil
  redirect_to root_path, notice: "You've successfully logged out!"
end
end
