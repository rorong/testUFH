class CreateFarmboxes < ActiveRecord::Migration[7.0]
  def change
    create_table :farmboxes do |t|
      t.string :farm_name
      t.integer :square_count
      t.float :value

      t.timestamps
    end
  end
end
