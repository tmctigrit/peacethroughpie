class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.belongs_to :user
      t.belongs_to :event

      t.timestamps null: false
    end
  end
end
