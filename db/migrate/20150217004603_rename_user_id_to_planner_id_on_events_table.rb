class RenameUserIdToPlannerIdOnEventsTable < ActiveRecord::Migration
  def change
    rename_column :events, :user_id, :planner_id
  end
end
