class RemoveOldEstimateColumn < ActiveRecord::Migration
  def change
    remove_column :tasks, :time_estimated, :string
  end
end
