class Admin::UsersController < ApplicationController
before_action :set_user, only: [:show, :edit, :update]
skip_before_action :authenticate_user!, only: [ :index, :show ]



  def index
    @users = User.all
    # @admin = policy_scope(User).where(admin: true)
    # # @admin = User.where(admin: true)
    # authorize @admin
  end

  def show

  end

  def edit

  end

  def update

  end


  private

  def set_user
    @user = User.find(params[:id])
  end

end
