class CreateDiagnoses < ActiveRecord::Migration[7.0]
  def change
    create_table :diagnoses do |t|
      t.string :diagnos

      t.timestamps
    end
  end
end
