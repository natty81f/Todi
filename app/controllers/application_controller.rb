class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  
  def current_user
  	# puts "blah"*75
   #  puts session[:user_id]

    @current_user ||= User.find_by_id(session[:user_id])
    # @current_user ||= User.find('520c7fb78c63ab1b48000001')
  end
  
  def is_authenticated
    redirect_to login_url unless current_user
  end
end
