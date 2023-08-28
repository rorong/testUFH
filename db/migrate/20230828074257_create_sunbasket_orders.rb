class CreateSunbasketOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :sunbasket_orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :sunbasket, null: false, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
