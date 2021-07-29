class User < ApplicationRecord
  has_secure_password
  belongs_to :home, optional: true
  has_many :plants, dependent: :destroy
  has_many :plant_events, through: :plants

  validates :name, :email, presence: true
  validates :email, uniqueness: true
end
