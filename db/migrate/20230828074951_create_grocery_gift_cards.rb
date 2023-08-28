class CreateGroceryGiftCards < ActiveRecord::Migration[7.0]
  def change
    create_table :grocery_gift_cards do |t|
      t.string :name_of_gift_card
      t.float :value_of_gift_card
      t.integer :square_count

      t.timestamps
    end
  end
end
