class PlantSerializer
  include JSONAPI::Serializer
  attributes :common_name, :scientific_name, :location, :watering_repeat_rate_days, :image_url, :description
  belongs_to :user
end
