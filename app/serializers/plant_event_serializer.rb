class PlantEventSerializer
  include JSONAPI::Serializer
  attributes :date, :completed, :event_type, :plant_id

  attribute :plant_name do |plant_event|
    "#{plant_event.plant.common_name}"
  end

end
