class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :email
      t.string :name
      t.references :teacher, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
