class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.datetime :due_date
      t.integer :priority

      t.timestamps
    end
  end
end
