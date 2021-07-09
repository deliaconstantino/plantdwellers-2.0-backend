class CreatePlantEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :plant_events do |t|
      t.references :plant, null: false, foreign_key: true
      t.date :date
      t.boolean :completed, null: false, default: false
      t.string :type

      t.timestamps
    end
  end
end
