class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :service_name
      t.text :service_description
      t.integer :square_count

      t.timestamps
    end
  end
end
