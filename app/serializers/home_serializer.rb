class HomeSerializer
  include JSONAPI::Serializer
  attributes :nickname, :city, :state, :country

  has_many :users
end
