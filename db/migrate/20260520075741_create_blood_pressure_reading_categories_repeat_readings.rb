class CreateBloodPressureReadingCategoriesRepeatReadings < ActiveRecord::Migration[8.0]
  def change
    create_table :blood_pressure_reading_categories_repeat_readings do |t|
      t.boolean :recommened
      t.integer :after_minutes

      t.timestamps
    end
  end
end
