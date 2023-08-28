class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.integer :member_user_id
      t.integer :provider_user_id
      t.references :service, null: false, foreign_key: true
      t.datetime :transaction_date
      t.float :value
      t.boolean :provider_review
      t.boolean :paid
      t.integer :square_count
      t.text :note

      t.timestamps
    end
  end
end
