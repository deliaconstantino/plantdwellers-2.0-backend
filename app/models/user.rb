class User < ApplicationRecord
  belongs_to :home, optional: true
  has_secure_password
end
