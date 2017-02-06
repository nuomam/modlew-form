class Users::RegistrationsController < Devise::RegistrationsController
before_action :configure_sign_up_params, only: [:create]
before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  def new
    @user = User.new
  end

  # POST /resource
  def create

    super
    # @user = User.new(user_params)
    # @user.password = Devise.friendly_token.first(8)
    # if @user.save
    #   redirect_to registration_steps_path
    # else
    #   render :new
    # end


  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  def update
    super
  end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email, :address, :postal_code, :city, :policy_agreement, :weldom_newsletter])
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:facebook_profile, :twitter_profile, :instagram_profile, :youtube_channel, :personnal_blog, :motivation])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :address, :postal_code, :city, :policy_agreement, :weldom_newsletter, :facebook_profile, :twitter_profile, :instagram_profile, :youtube_channel, :personnal_blog, :motivation)
  end

  # The path used after sign up.
  def after_sign_up_path_for(resource)
    registration_steps_path
  end

  # The path used after sign up for inactive accounts.
  def after_inactive_sign_up_path_for(resource)
    registration_steps_path
  end
end
