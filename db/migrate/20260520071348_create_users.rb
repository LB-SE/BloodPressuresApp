class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.integer :user_number
      t.date :birth_date
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
