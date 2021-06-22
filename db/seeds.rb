# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

Home.destroy_all
User.destroy_all
Plant.destroy_all

florida = Home.create(nickname: "Palm Paradise", city: "Tampa", state: "FL")
ohio = Home.create(nickname: "Midwestern Retreat", city: "Columbus", state: "OH")

delia = User.create(name: "Delia",  email: "delia@example.com", password: "password", home_id: florida.id)
scott = User.create(name: "Scott",  email: "scott@example.com", password: "password")
clare = User.create(name: "Clare",  email: "cc@example.com", password: "password", home_id: ohio.id)
sam = User.create(name: "Sam",  email: "sam@example.com", password: "password", home_id: ohio.id)

palm_tree = Plant.create(common_name: "palm tree", scientific_name: "Arecaceae", location: "porch", user: delia)
bromeliad = Plant.create(common_name: "bromeliad", scientific_name: "Bromeliad", location: "living room", user: scott)
orchid = Plant.create(common_name: "orchid", scientific_name: "Orchidaceae", location: "bedroom", user: clare)
basil = Plant.create(common_name: "basil", scientific_name: "Ocimum basilicum", location: "kitchen", user: sam)
