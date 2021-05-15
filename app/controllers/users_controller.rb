class UsersController < ApplicationController
  def index
    @user = current_user
  end

  def show
    @profile_user = User.find_by_username(params[:username])
    # To appear as 'month year'
    @member_since = @profile_user.created_at.to_date.strftime('%b %Y')
  end
end
