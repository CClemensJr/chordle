class RemoveCompletedAtFromChores < ActiveRecord::Migration[5.1]
  def change
    remove_column :chores, :completed_at
  end
end
