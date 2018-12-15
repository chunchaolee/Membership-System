class RolesController < ApplicationController
  before_action :authenticate_user!

  def premium
    if current_user
      if current_user.roles.find_by(name: 'premium').blank?
        current_user.roles << Role.find_by(name: 'premium')
        flash[:notice] = "You are Premium now!" 
        redirect_back(fallback_location: root_path)
      else
        flash[:alert] = "You are Premium alredy, you don't need to upgrade again!" 
        redirect_back(fallback_location: root_path)
      end
    else
      flash[:alert] = "Please Sign In/Up First" 
      redirect_back(fallback_location: root_path)
    end
  end
end
