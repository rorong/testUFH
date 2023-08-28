class Transaction < ApplicationRecord
  belongs_to :service
  belongs_to :member_user, class_name: 'User', foreign_key: 'member_user_id'
  belongs_to :provider_user, class_name: 'User', foreign_key: 'provider_user_id'
end
