class CreateBloodPressureReadingCategoryCriteria < ActiveRecord::Migration[8.0]
  def change
    create_table :blood_pressure_reading_category_criteria do |t|
      t.string :match

      t.timestamps
    end
  end
end
