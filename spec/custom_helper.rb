module CustomHelper
  def login_as_admin_user
    @user = FactoryBot.create(:user)
    admin_role = FactoryBot.create(:admin_role)
    @user.roles << admin_role
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
    sign_in @user
  end

  def login_as_premium_user
    @user = FactoryBot.create(:user)
    premium_role = FactoryBot.create(:premium_role)
    @user.roles << premium_role
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
    sign_in @user
  end

  def login_as_normal_user
    @user = FactoryBot.create(:user)
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(@user)
    sign_in @user
  end
end