class Plant < ApplicationRecord
  belongs_to :user
  has_many :plant_events
end
