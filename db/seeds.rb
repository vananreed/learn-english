# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

abby = User.create(email: "arendabby2@gmail.com", first_name: "Abby", last_name: "Arend", username: "teacherAbby", password: ENV["PASSWORD"], password_confirmation: ENV["PASSWORD"])
teacher = Teacher.new(id: 1,
 education: "TEFL Certified, Bachelor's of Arts in Political Science",
 years_of_experience: 4)
teacher.user = abby
teacher.save!


