class CreateChores < ActiveRecord::Migration[5.1]
  def change
    create_table :chores do |t|
      t.string :name
      t.text :description
      t.string :priority
      t.integer :time_for_completion

      t.timestamps
    end
  end
end
