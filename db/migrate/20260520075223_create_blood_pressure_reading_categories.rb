class CreateBloodPressureReadingCategories < ActiveRecord::Migration[8.0]
  def change
    create_table :blood_pressure_reading_categories do |t|
      t.string :code
      t.string :label
      t.string :severity
      t.integer :priority
      t.string :patient_message
      t.string :recommended_action
      t.boolean :symptom_check_required

      t.timestamps
    end
  end
end
