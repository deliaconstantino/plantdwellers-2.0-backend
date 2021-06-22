class PlantSerializer
  include JSONAPI::Serializer
  attributes :common_name, :scientific_name, :location
  belongs_to :user
end
