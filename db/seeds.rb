# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all

User.create!([
{
 email: "bob@bob.com",
 password: "123",
 password_confirmation: "123",
 username: "Bob Bobby"
 },
 {
 email: "joe@joe.com",
 password: "345",
 password_confirmation: "345",
 username: "Joe Joey"
 }

])

# Dog.create!(

#  name: "Lucy",
#  color: "Brown"

# )