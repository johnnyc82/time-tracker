class AddForeignKeyTaskTime < ActiveRecord::Migration
  def change
    add_foreign_key :task_times, :tasks
    add_column :task_times, :task_id, :integer
  end
end
