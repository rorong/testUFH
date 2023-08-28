class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :members
  has_many :passports
  has_many :member_transactions, class_name: 'Transaction', foreign_key: 'member_user_id'
  has_many :provider_transactions, class_name: 'Transaction', foreign_key: 'provider_user_id'
end
