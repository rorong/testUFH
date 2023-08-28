class CreatePassports < ActiveRecord::Migration[7.0]
  def change
    create_table :passports do |t|
      t.string :passpost_id
      t.references :user, null: false, foreign_key: true
      t.integer :square_granted
      t.integer :square_used
      t.string :qr_code
      t.date :expiration_date
      t.boolean :eligible_renewal
      t.string :status

      t.timestamps
    end
  end
end
