class CreateBloodPressureReadings < ActiveRecord::Migration[8.0]
  def change
    create_table :blood_pressure_readings do |t|
      t.integer :systolic
      t.integer :diastolic

      t.timestamps
    end
  end
end
