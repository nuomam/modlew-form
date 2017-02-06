class RegistrationStepsController < ApplicationController
  include Wicked::Wizard

  steps :user_social_media, :user_motivation

  def show
    render_wizard
  end

end
