class RegistrantController < ApplicationController

	def new
    # Create a new registrant with same email, then display form
    @registrant = Registrant.new
  end

  def create
    @registrant = Registrant.new(registrant_params)
    @registrant.code = SecureRandom.urlsafe_base64
    @registrant.expires_at = Time.now + 7.hours

    if @registrant.save
      RegistrantMailer.registrant_email(@registrant).deliver

      redirect_to root_url, notice: "A registration email has been sent to you."
    else
      flash.now[:error] = "Please enter a valid email address and try again."
      render :new
    end
  end

  def edit
    @registrant = Registrant.find_by_code params[:code]

    if @registrant and @registrant.expires_at > Time.now
      @user = User.new(email: @registrant.email)
    else
      redirect_to register_path, error: "Your registration link has expired. Please try again."
    end
  end

  def update
    @registrant = Registrant.find_by_code params[:code]
    @user = User.new(user_params)
    @user.email = @registrant.email

    if @user.save 
      @registrant.destroy || @user = current_user
      redirect_to root_url, notice: "Thank you for registering!"
    else
      flash.now[:error] = @user.errors
      render :edit
    end
  end

  private
  
  def registrant_params
    params.require( :registrant ).permit( :email )
  end

  def user_params
    params.require( :user ).permit( 
    	:password, 
    	:password_confirmation,
    	:username,
    	:name
      )
  end
end
