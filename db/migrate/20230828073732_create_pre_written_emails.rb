class CreatePreWrittenEmails < ActiveRecord::Migration[7.0]
  def change
    create_table :pre_written_emails do |t|
      t.string :subject
      t.text :content
      t.integer :week_number

      t.timestamps
    end
  end
end
