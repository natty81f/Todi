class MessagesController < ApplicationController

  before_action :get_user # we'll need the parent user
  before_action :get_message, except: [:index, :create]

  def index
  # @message = @user.messages.find_by_emotion_type(params[:emotion_type])
    @messages = current_user.messages.select { |m| m.emotion_type == params[:emotion_type] }
  end

	def new
    if @user
       @message = @user.messages.build
    end
  end

  def create
    # @message = current_user.messages << Message.new(message_params)
    if @user
      if @message = @user.messages << Message.new(message_params)
        @user.save
        redirect_to root_path, notice: "You've created a new message!"
      else
        puts "render new"
        render :new 
      end
    end
  end


  def show  
  end  


  private

  def get_user
    # If we don't find a user, then that's a BAD REQUEST
    head :bad_request unless @user = current_user
  end

  def get_message
    if @user
      
      head :not_found unless @message = @user.messages.find(params[:id])
    end
  end
  
  def message_params
    params.require(:message).permit( :text, :emotion_type)
  end

end
