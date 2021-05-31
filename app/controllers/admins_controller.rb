class AdminsController < ApplicationController
  # skip_before_action :authenticate_user!, only: :index
  before_action :authenticate_admin!

  def index
    @admins = Admin.all
    @businesses = Store.all
  end

  private

  def admin_params
    params.require(:admin).permit(:admin_mode)
  end

end
