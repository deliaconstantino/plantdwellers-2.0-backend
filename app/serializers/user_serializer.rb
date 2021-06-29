class UserSerializer
  include JSONAPI::Serializer
  attributes :name, :email, :home
  # belongs_to :home


end
