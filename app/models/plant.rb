require 'date'
require 'active_support'

class Plant < ApplicationRecord
  belongs_to :user
  has_many :plant_events, dependent: :destroy
  validates :common_name, :scientific_name, :location, :watering_repeat_rate_days, presence: true

  def build_plant_events_collection(watering_repeat_rate_days, start_date = Date.today)
    event_date = start_date

    if watering_repeat_rate_days
      while event_date < start_date.at_beginning_of_month.next_month
        self.plant_events.create(date: event_date, event_type: "water")
        event_date = event_date.advance(days: watering_repeat_rate_days)
      end
    end

  end
end
