class SiteController < ApplicationController

	def index
		# if current_user.nil? works too but line below is proper Ruby 
		# if !!!current_user 
			# flash.now[:error] = "You need to sign in or sign up before continuing."		
		# end
	end

	# GET / - Me Page
	def me
		@user = current_user
	end

	# GET / - Home Page
	def home
		@user = current_user
		@message = Message.new
	end	

end
