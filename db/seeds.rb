# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

ActiveRecord::Base.transaction do
    Home.destroy_all
    User.destroy_all
    Plant.destroy_all

    florida = Home.create!(nickname: "Palm Paradise", city: "Tampa", state: "FL", country: "US")
    ohio = Home.create!(nickname: "Midwestern Retreat", city: "Columbus", state: "OH", country: "US")

    delia = User.create!(name: "Delia",  email: "delia@example.com", password: "password", home_id: florida.id)
    scott = User.create!(name: "Scott",  email: "scott@example.com", password: "password", home_id: florida.id)
    clare = User.create!(name: "Clare",  email: "cc@example.com", password: "password", home_id: ohio.id)
    sam = User.create!(name: "Sam",  email: "sam@example.com", password: "password", home_id: ohio.id)

    palm_tree = Plant.new(common_name: "palm tree", scientific_name: "Arecaceae", location: "porch", user: delia, watering_repeat_rate_days: 4)

    if palm_tree.save
        palm_tree.build_plant_events_collection(palm_tree.watering_repeat_rate_days, start_date = Date.today)
    end


    bromeliad = Plant.new(common_name: "bromeliad", scientific_name: "Bromeliad", location: "living room", user: scott, watering_repeat_rate_days: 7)

    if bromeliad.save
        bromeliad.build_plant_events_collection(bromeliad.watering_repeat_rate_days, start_date = Date.today)
    end

    orchid = Plant.new(common_name: "orchid", scientific_name: "Orchidaceae", location: "bedroom", user: clare, watering_repeat_rate_days: 7)

    if orchid.save
        orchid.build_plant_events_collection(orchid.watering_repeat_rate_days, start_date = Date.today)
    end

    basil = Plant.new(common_name: "basil", scientific_name: "Ocimum basilicum", location: "kitchen", user: sam, watering_repeat_rate_days: 3)

    if basil.save
        basil.build_plant_events_collection(basil.watering_repeat_rate_days, start_date = Date.today)
    end
end
