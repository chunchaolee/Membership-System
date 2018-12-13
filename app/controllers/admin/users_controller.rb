class Admin::UsersController < ApplicationController
  before_action :authenticate_admin
  before_action :find_user, only: [:promotion, :demotion]

  def index
    @users = User.all.order(created_at: :DESC)
  end

  def promotion
    @user.roles << Role.find_by(name: 'admin')
    flash[:notice] = "#{@user.email} are Admin now!" 
    redirect_back(fallback_location: admin_users_path)
  end

  def demotion
    @user.user_roles.where(role_id: Role.find_by(name: 'admin').id).destroy_all
    flash[:notice] = "#{@user.email} are normal user now!" 
    redirect_back(fallback_location: admin_users_path)
  end

  private

  def find_user
    @user = User.find(params[:user_id])
  end
end
