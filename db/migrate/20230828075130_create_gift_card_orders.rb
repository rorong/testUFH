class CreateGiftCardOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :gift_card_orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :grocery_gift_card, null: false, foreign_key: true
      t.boolean :status
      t.string :store

      t.timestamps
    end
  end
end
