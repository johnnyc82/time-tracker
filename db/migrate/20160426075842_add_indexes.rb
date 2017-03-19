class AddIndexes < ActiveRecord::Migration
  def change
    add_index :tasks, :list_id
    add_index :task_times, :task_id
  end
end
