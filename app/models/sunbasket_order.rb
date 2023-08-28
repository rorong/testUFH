class SunbasketOrder < ApplicationRecord
  belongs_to :user
  belongs_to :sunbasket
end
