class RegistrationsController < Devise::RegistrationsController
  
  def after_update_path_for(resource)
    user_path(current_user.username)
  end
  
end
