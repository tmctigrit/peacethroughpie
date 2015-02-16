class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :serves
      t.text :ingredients
      t.text :directions
      t.string :imagefile

      t.timestamps null: false
    end
  end
end
