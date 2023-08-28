class CreatePassportStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :passport_statuses do |t|
      t.boolean :status

      t.timestamps
    end
  end
end
