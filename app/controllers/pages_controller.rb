class PagesController < ApplicationController
  # USER DOES NOT HAVE TO BE SIGNED UP TO VIEW HOME
  skip_before_action :authenticate_user!, only: :home

  def home
    @user = current_user
    if user_signed_in?
      redirect_to stores_path
    elsif admin_signed_in?
      redirect_to admins_path
    end
  end
end
