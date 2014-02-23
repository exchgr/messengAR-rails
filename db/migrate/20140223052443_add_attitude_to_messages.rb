class AddAttitudeToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :yaw, :decimal
    add_column :messages, :pitch, :decimal
    add_column :messages, :roll, :decimal
  end
end
