class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @user = current_user
    if user_signed_in?
      redirect_to stores_path
    end
  end
end
