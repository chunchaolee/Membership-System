class ApplicationController < ActionController::Base
  def authenticate_admin
    unless current_user.try(:is_admin)
      flash[:alert] = "Not allow!"
      redirect_to root_path
    end
  end
end
