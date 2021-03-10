# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Project.destroy_all
Task.destroy_all

management = Project.create(name: "management")

event = Project.create(name: "event")


Task.create(title: "Finish Taxes", deadline: "April 15, 2021", creator: "Jessica", status: false, project_id: management.id)

Task.create(title: "Complete JS Project", deadline: "March 19, 2021", creator: "Sydney", status: true, project_id: event.id)


