class Member < ApplicationRecord
  belongs_to :user
  belongs_to :under_represented
end
