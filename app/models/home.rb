class Home < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :plants, through: :users
  has_many :plant_events, through: :plants
end
