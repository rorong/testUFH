class CreateLancasters < ActiveRecord::Migration[7.0]
  def change
    create_table :lancasters do |t|
      t.string :farm_name
      t.integer :square_count
      t.float :value

      t.timestamps
    end
  end
end
