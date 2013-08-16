# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

User.destroy_all

User.create!([
{
 email: "bob@bob.com",
 password: "aaaa",
 password_confirmation: "aaaa",
 username: "GalaxyChococale",
 name: "Bob BB"
 },
 {
 email: "joe@joe.com",
 password: "bbbb",
 password_confirmation: "bbbb",
 username: "SpaceNero",
 name: "Joe JJ"
 }

])
