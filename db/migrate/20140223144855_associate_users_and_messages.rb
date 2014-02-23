class AssociateUsersAndMessages < ActiveRecord::Migration
  def up
    change_table :messages do |t|
      t.belongs_to :user
    end
  end

  def down
  end
end
