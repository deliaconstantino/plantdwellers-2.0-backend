class AddDetailsToPlants < ActiveRecord::Migration[6.1]
  def change
    add_column :plants, :image_url, :string
    add_column :plants, :description, :string
  end
end
