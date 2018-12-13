class RolesController < ApplicationController
  before_action :authenticate_user!

  def premium
    if current_user
      current_user.roles << Role.find_by(name: 'premium') if current_user.roles.find_by(name: 'premium').blank?
      flash[:notice] = "You are Premium now!" 
      redirect_back(fallback_location: root_path)
    else
      flash[:alert] = "Please Sign In/Up First" 
      redirect_back(fallback_location: root_path)
    end
  end
end
