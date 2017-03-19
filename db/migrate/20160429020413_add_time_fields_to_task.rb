class AddTimeFieldsToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :time_estimated, :integer
    add_column :tasks, :time_elapsed, :integer
  end
end
