class AddUserIdFromUsersToEvent < ActiveRecord::Migration
  def change
    change_table :events do |t|
      t.references :user
    end
  end
end
