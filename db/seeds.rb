# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Home.destroy_all
User.destroy_all
Plant.destroy_all

florida = Home.create(nickname: "Palm Paradise", city: "Tampa", state: "FL")
ohio = Home.create(nickname: "Midwestern Retreat", city: "Columbus", state: "OH")

delia = User.create(name: "Delia",  email: "delia@example.com", password: "password", home_id: florida.id)
scott = User.create(name: "Scott",  email: "scott@example.com", password: "password")
clare = User.create(name: "Clare",  email: "cc@example.com", password: "password", home_id: ohio.id)

palm_tree = Plant.create(common_name: "palm tree", scientific_name: "Arecaceae", location: "porch")
bromeliad = Plant.create(common_name: "bromeliad", scientific_name: "Bromeliad", location: "living room")
