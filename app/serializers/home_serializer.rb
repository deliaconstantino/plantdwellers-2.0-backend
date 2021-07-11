class HomeSerializer
  include JSONAPI::Serializer
  attributes :nickname, :city, :state, :country

  has_many :plant_events, through: :plants
  has_many :users

  # attribute :plants do |info|
  #   "#{info.name}"
  # end





end
