class SiteController < ApplicationController
# before_action :is_authenticated, only: [ :index ]

	def index
		@user = current_user
		@message = Message.new
	end

	# GET / - Me Page
	def me
		@user = current_user
	end

end
