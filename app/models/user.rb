class User < ApplicationRecord
  has_secure_password
  belongs_to :home, optional: true
  has_many :plants, dependent: :destroy
end
