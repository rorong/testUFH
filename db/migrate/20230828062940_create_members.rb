class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.references :user, null: false, foreign_key: true
      t.date :date_of_birth
      t.string :special_delivery
      t.string :already_received
      t.string :current_diagnosis
      t.boolean :tnbc
      t.date :diagnosis_date
      t.string :hospital
      t.string :oncologist_first_name
      t.string :oncologist_last_name
      t.string :learn_about
      t.string :other
      t.boolean :local
      t.boolean :national
      t.string :insurance
      t.string :insurance_other
      t.references :under_represented, null: false, foreign_key: true
      t.boolean :approved
      t.boolean :bilingual
      t.string :grants
      t.boolean :liability_release
      t.boolean :publicity_release
      t.string :notes

      t.timestamps
    end
  end
end
