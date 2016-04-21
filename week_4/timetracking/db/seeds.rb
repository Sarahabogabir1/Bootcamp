project_1=Project.create(name:"Ironhack", description:"Ironhack is a Bootcamp")
project_2=Project.create(name:"Final Project", description: "Final Ironhack project")
project_3=Project.create(name: "Recipes", description: "Track  my favorite recipies")
project_4=Project.create(name: "Names", description: "Names of students")
project_5=Project.create(name: "Age", description: "Age of students" )
project_6=Project.create(name: "Dogs", description: "Types of Dogs")
project_7=Project.create(name: "Colors" , description: "Types of Colors")
project_8=Project.create(name: "Cars", description: "Types of Cars")
project_9=Project.create(name: "Candy", description: "Types of Candy")
project_10=Project.create(name: "Singers" , description: "Types of Singers") 

#making a time entry
TimeEntry.create(project_id:1,hours: 2, minutes: 30, comments: "Hello World", date: Time.now)
TimeEntry.create(project_id:2,hours: 3, minutes: 32, comments: "Hello Tomorrow", date: Time.now)
TimeEntry.create(project_id:3,hours: 4, minutes: 33, comments: "Hello Monday", date: Time.now)
TimeEntry.create(project_id:4,hours: 5, minutes: 33, comments: "Hello Tuesday", date: Time.now)
TimeEntry.create(project_id:5,hours: 6, minutes: 34, comments: "Hello Wed", date: Time.now)
TimeEntry.create(project_id:6,hours: 7, minutes: 35, comments: "Hello Thursday", date: Time.now)
TimeEntry.create(project_id:7,hours: 8, minutes: 36, comments: "Hello Friday", date: Time.now)
TimeEntry.create(project_id:8,hours: 10, minutes: 37, comments: "Hello Saturday", date: Time.now)
TimeEntry.create(project_id:9,hours: 11, minutes: 38, comments: "Hello Sunday", date: Time.now)
TimeEntry.create(project_id:10,hours: 12, minutes: 39, comments: "Hello Friyay", date: Time.now)





# t.integer  "project_id"
#     t.integer  "hours"
#     t.integer  "minutes"
#     t.string   "comments"
#     t.datetime "date"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at",



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
