class CreateChores < ActiveRecord::Migration[5.1]
  def change
    create_table :chores do |t|
      t.string :title
      t.text :details
      t.string :priority
      t.integer :time_to_complere
      t.datetime :completed_at

      t.timestamps
    end
  end
end
