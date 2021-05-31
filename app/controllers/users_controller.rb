class UsersController < ApplicationController

  def index
    @user = current_user
    @example = User.find_by_username("John2")
  end

  def show
    @user = current_user
    @profile_user = User.find_by_username(params[:id])
    @profile_user_avatar = @profile_user.user_avatar
    # To appear as 'month year'
    # @member_since = @profile_user.created_at.to_date.strftime('%b %Y')
  end


  private


  def user_params
    params.require(:user).permit(:profile_photo)
  end
end