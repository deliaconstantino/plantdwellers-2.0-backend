class UserSerializer
  include JSONAPI::Serializer
  attributes :name, :email
  belongs_to :home
end
