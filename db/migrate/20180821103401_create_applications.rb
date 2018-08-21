class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.string :native_language
      t.integer :years_of_english, default: 0
      t.text :past_experience, default: 0
      t.text :learning_goals
      t.string :topics_of_interest
      t.integer :age
      t.string :address
      t.string :gender
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
