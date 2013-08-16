class MessagesController < ApplicationController

  before_action :get_user # we'll need the parent design
  before_action :get_message, except: [:index, :create]

	def new
    if @user
       @message = @user.messages.build
    end
  end

  def create
    puts "hello"
    # @message = current_user.messages << Message.new(message_params)
    if @user
      if @message = @user.messages << Message.new(message_params)
        @user.save
        redirect_to root_path
      else
        puts "render new"
        render :new
      end
    end
  end


  private

  def get_user
    # If we don't find a user, then that's a BAD REQUEST
    head :bad_request unless @user = current_user
  end

  def get_message
    if @user
      # We get the message from the user's message array, so we
      # KNOW that this message is embedded in the right user.
      head :not_found unless @message = @user.messages.find(params[:id])
    end
  end
  
  def message_params
    params.require(:message).permit( :text, :emotion_type )
  end

end
