class CreateHospitals < ActiveRecord::Migration[7.0]
  def change
    create_table :hospitals do |t|
      t.string :hosptial_name

      t.timestamps
    end
  end
end
