class CreateHomes < ActiveRecord::Migration[6.1]
  def change
    create_table :homes do |t|
      t.string :city
      t.string :nickname
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
