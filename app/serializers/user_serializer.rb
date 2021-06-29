class UserSerializer
  include JSONAPI::Serializer
  attributes :name, :email, :home, :plants
  # belongs_to :home


end
