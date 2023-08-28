class CreateLancasterOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :lancaster_orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :lancaster, null: false, foreign_key: true
      t.string :location
      t.boolean :status

      t.timestamps
    end
  end
end
