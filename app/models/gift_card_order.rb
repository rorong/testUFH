class GiftCardOrder < ApplicationRecord
  belongs_to :user
  belongs_to :grocery_gift_card
end
