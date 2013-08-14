class MessagesController < ApplicationController

	def new
    @message = Message.new
  end

  def create
    @message = current_user.message << Message.new(message_params)

    if current.save 

      redirect_to root_url, notice: "Your Todi has been saved!"
    else
       
      flash.now[:error] = "try again."
      redirect_to root_url
    end
  end


  private
  
  def message_params
    params.require( :message ).permit( :text )
  end

end
