class RenameTypeColumnToEventType < ActiveRecord::Migration[6.1]
  def change
    rename_column :plant_events, :type, :event_type
  end
end
