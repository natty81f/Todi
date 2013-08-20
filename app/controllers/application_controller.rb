class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  # before_filter :require_login
  
  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
    # @current_user ||= User.find('520c7fb78c63ab1b48000001')
  end

  helper_method :current_user
  
  def is_authenticated
    redirect_to login_url unless current_user
  end


  # private

  # def require_login
  #   unless logged_in?
  #     flash[:error] = "You must be logged in to access this section"
  #     redirect_to login_path
  #   end
  # end

  # def logged_in?
  #   !!current_user
  # end

end
