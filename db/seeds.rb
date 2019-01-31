# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.destroy_all

students = [
  {:first_name=>"Theresa", :last_name=>"May"},
  {:first_name=>"Chris", :last_name=>"Camacho"},
  {:first_name=>"Kim", :last_name=>"Jon-Un"},
  {:first_name=>"Donald", :last_name=>"Trump"}
]

Student.create(students)
