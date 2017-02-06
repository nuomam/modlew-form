class RegistrationStepsController < ApplicationController
  include Wicked::Wizard

  steps :user_social_media, :user_motivation

  def show
    @user = current_user
    render_wizard
  end

  def update
    @user = current_user
    @user.update(user_params)
    render_wizard @user
  end

  def finish_wizard_path
    confirmation_path
  end

private

  def user_params
    params.require(:user).permit(:facebook_profile, :twitter_profile, :instagram_profile, :youtube_channel, :personnal_blog, :motivation)
  end


end
