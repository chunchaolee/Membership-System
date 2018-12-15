require 'rails_helper'

RSpec.describe "Sessions" do
  before(:each) do
    @user = FactoryBot.create(:user)
  end

  it "#session: signs user in" do
    sign_in(@user)
    get root_path
    expect(controller.current_user).to eq(@user)
  end
    
  it "#session: signs user out" do
    sign_out(@user)
    get root_path
    expect(controller.current_user).to be_nil
  end
end