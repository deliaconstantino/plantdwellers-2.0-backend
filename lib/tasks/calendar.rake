namespace :calendar do
  desc "delete previous month's calendar events and populate current month"
  task update_calendar: :environment do
    PlantEvent.delete_all
    Plant.find_each do |plant|
      if plant.watering_repeat_rate_days
        plant.build_plant_events_collection(plant.watering_repeat_rate_days)
      end
    end
  end

end
