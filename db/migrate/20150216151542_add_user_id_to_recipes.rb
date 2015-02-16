class AddUserIdToRecipes < ActiveRecord::Migration
  def change
    change_table :recipes do |t|
    t.references :user
    end
  end
end
