  # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

employee1 = Employee.where(employee_id: 1).first
employee2 = Employee.where(employee_id: 2).first
employee3 = Employee.where(employee_id: 3).first

employee1.delete if employee1
employee2.delete if employee2
employee3.delete if employee3

createEmployee1 = Employee.create([employee_id: 1,name: "Mfan Stan",age: 23,telephone: "07938425674"])
createEmployee2 = Employee.create([employee_id: 2,name: "Stonz Brown",age: 26,telephone: "07998767434"])
createEmployee3 = Employee.create([employee_id: 3,name: "Dommin Tooth",age: 34,telephone: "07836572843"])

court1 = Court.where(name: 'Rays Castle').first
court2 = Court.where(name: 'Hillside').first
court3 = Court.where(name: 'Sunshine').first
court1.delete if court1
court2.delete if court2
court3.delete if court3

createCourt1 = Court.create([name: 'Rays Castle',address:'123 Drive',employee_working: 1])
createCourt2 = Court.create([name: 'Hillside',address:'Istahill'])
createCourt3 = Court.create([name: 'Sunshine',address:'23 Bogon lane'])
