class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_roles, dependent: :destroy
  has_many :roles, through: :user_roles, source: :role

  def is_admin
    roles.find_by(name: 'admin').present?
  end

  def is_premium
    roles.find_by(name: 'premium').present?
  end
end
