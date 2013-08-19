class SessionsController < ApplicationController

	def new
  end

  def create
  user = User.authenticate params[:session][:email], params[:session][:password]
  if user 
    puts params[:user_id]
    
    session[:user_id] = user.id
    redirect_to root_path, notice: "Logged in!"
  else
    render :new
  end
end

def destroy
  session[:user_id] = nil
  redirect_to root_path, notice: "Logged out!"
end
end