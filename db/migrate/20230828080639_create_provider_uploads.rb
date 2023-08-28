class CreateProviderUploads < ActiveRecord::Migration[7.0]
  def change
    create_table :provider_uploads do |t|
      t.string :email_address
      t.integer :row_count
      t.integer :completed_count
      t.integer :error_count
      t.string :ouput_file

      t.timestamps
    end
  end
end
