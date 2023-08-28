class CreateUnderRepresenteds < ActiveRecord::Migration[7.0]
  def change
    create_table :under_representeds do |t|
      t.string :zip_code
      t.string :state

      t.timestamps
    end
  end
end
