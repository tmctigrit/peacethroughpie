class AddColumnsToRsvps < ActiveRecord::Migration
  def change
    add_column :rsvps, :message, :string
    add_column :rsvps, :extras, :integer
  end
end
