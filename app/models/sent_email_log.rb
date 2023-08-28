class SentEmailLog < ApplicationRecord
  belongs_to :user
  belongs_to :email, class_name: 'PreWrittenEmail', foreign_key: 'email_id'
end
