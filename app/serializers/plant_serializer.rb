class PlantSerializer
  include JSONAPI::Serializer
  attributes :common_name, :scientific_name, :location, :watering_repeat_rate_days
  belongs_to :user
end
