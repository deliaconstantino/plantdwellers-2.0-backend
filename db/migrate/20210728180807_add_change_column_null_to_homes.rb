class AddChangeColumnNullToHomes < ActiveRecord::Migration[6.1]
  def change
    change_column_null :homes, :nickname, false
    change_column_null :homes, :city, false
    change_column_null :homes, :state, false
    change_column_null :homes, :country, false
  end
end
