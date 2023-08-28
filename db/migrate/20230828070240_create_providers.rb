class CreateProviders < ActiveRecord::Migration[7.0]
  def change
    create_table :providers do |t|
      t.references :user, null: false, foreign_key: true
      t.boolean :virtual_sessions
      t.string :company
      t.references :service, null: false, foreign_key: true
      t.datetime :insurance_expiration
      t.string :certification_name
      t.boolean :certification
      t.date :cert_expiration
      t.date :training_class
      t.text :notes
      t.string :nickname
      t.string :bilingual
      t.string :bilingual_language
      t.boolean :provider_agreement

      t.timestamps
    end
  end
end
