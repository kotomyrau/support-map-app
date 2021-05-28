class AdminsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @admins = Admin.all
  end

  private

  def admin_params
    params.require(:admin).permit(:admin_mode)
  end

end
