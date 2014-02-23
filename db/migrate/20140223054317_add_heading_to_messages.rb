class AddHeadingToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :heading, :decimal
  end
end
