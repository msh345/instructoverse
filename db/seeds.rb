# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: 'Tee', email: 'tee@dev.com', password:'password', password_confirmation:'password')
User.create(username: 'Mark', email: 'mark@dev.com', password:'password', password_confirmation:'password')
User.create(username: 'Maria', email: 'maria@dev.com', password:'password', password_confirmation:'password')
User.create(username: 'Ryan', email: 'ryan@dev.com', password:'password', password_confirmation:'password')

