class RemoveTaskTimesTable < ActiveRecord::Migration
  def change
    drop_table(:task_times)
  end
end
