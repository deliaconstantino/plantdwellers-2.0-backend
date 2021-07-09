class RenameWateringRateToWateringRepeatRateDays < ActiveRecord::Migration[6.1]
  def change
    rename_column :plants, :watering_rate, :watering_repeat_rate_days
  end
end
