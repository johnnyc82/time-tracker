class RemoveStatusAndTotalFromList < ActiveRecord::Migration
  def change
    remove_column :lists, :status
    remove_column :lists, :task_total
  end
end
