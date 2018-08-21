class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.text :education
      t.integer :years_of_experience
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
