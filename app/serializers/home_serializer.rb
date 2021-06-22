class HomeSerializer
  include JSONAPI::Serializer
  attributes :nickname, :city, :state, :country
end
