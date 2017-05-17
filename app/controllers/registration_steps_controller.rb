class RegistrationStepsController < ApplicationController
  include Wicked::Wizard

  steps :user_information

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
    params.require(:user).permit(:facebook_profile, :twitter_profile, :instagram_profile, :youtube_channel, :personnal_blog, :motivation, :photo, :construction_type, :construction_surface, :general_diy, :electricity, :plumbing, :building, :gardening, :decoration, :phone_number, :card_number)
  end


end
