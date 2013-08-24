class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  
  def current_user
    @current_user ||= User.find(session[:user_id])
    # @current_user ||= User.find('520c7fb78c63ab1b48000001')
  end

  helper_method :current_user
  
  def is_authenticated
    redirect_to login_url unless current_user
  end

end
