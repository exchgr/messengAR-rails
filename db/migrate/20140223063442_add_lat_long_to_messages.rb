class AddLatLongToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :latitude, :decimal
    add_column :messages, :longitude, :decimal
  end
end
