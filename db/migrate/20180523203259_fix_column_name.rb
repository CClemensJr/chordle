class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :chores, :time_to_complere, :time_to_complete
  end
end
