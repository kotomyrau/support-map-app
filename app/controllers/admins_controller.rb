class AdminsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @admins = Admin.all
  end
end
