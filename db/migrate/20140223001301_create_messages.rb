class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :imageURL
      t.string :content
      t.decimal :screenX
      t.decimal :screenY
      t.string :hint

      t.timestamps
    end
  end
end
