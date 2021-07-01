class AddWateringRateColumnToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :watering_rate, :integer
  end
end
