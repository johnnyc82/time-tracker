class CreateTaskTimes < ActiveRecord::Migration
  def change
    create_table :task_times do |t|
      t.integer :estimated
      t.integer :elapsed
      t.integer :total

      t.timestamps null: false
    end
  end
end
