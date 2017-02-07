class Admin::AdminsController < ApplicationController
skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @users = User.all
    # @admin = policy_scope(User).where(admin: true)
    # # @admin = User.where(admin: true)
    # authorize @admin
  end

end
