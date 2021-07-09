class PlantSerializer
  include JSONAPI::Serializer
  attributes :common_name, :scientific_name, :location, :watering_rate
  belongs_to :user
end
