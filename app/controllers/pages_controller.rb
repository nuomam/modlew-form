require 'csv'

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :export_csv ]

  def home
    sign_out
  end

  def confirmation
  end

  def export_csv
    @users = User.all
    respond_to do |format|
      format.html
      format.csv do
        headers['Content-Disposition'] = "attachment; filename=\"user-list\""
        headers['Content-Type'] ||= 'text/csv'
      end
    end
  end
end
