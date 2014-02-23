class RemoveImageUrlFromMessages < ActiveRecord::Migration
  def up
    remove_column :messages, :imageURL
  end

  def down
    add_column :messages, :imageURL, :string
  end
end
