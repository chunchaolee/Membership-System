require 'rails_helper'

RSpec.describe Role, type: :model do
  describe 'Model associations' do
    it { should have_many(:user_roles) }
    it { should have_many(:users) }
  end
end
