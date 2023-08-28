class CreateSentEmailLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :sent_email_logs do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :email_id

      t.timestamps
    end
  end
end
