# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

court1 = Court.where(name: 'Rays Castle').first
court2 = Court.where(name: 'Hillside').first
court3 = Court.where(name: 'Sunshine').first

court1.delete if court1
court2.delete if court2
court3.delete if court3

creatou = Court.create([name: "Rays Castle", address: "181 Udling lane"])
creatou2 = Court.create([name: "Hillside", address: "179 Udling lane"])

employee1 = Employee.where(name: "Mfan Stan").first
employee2 = Employee.where(name: "Stonz Brown").first
employee3 = Employee.where(name: "Dommin Tooth").first

employee1.delete if employee1
employee2.delete if employee2
employee3.delete if employee3

createEmployee1 = Employee.create([name: "Mfan Stan",age: 23,telephone: "07938425674"])
createEmployee2 = Employee.create([name: "Stonz Brown",age: 26,telephone: "07998767434"])
createEmployee3 = Employee.create([name: "Dommin Tooth",age: 34,telephone: "07836572843"])
