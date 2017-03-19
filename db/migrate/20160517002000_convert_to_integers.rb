class ConvertToIntegers < ActiveRecord::Migration
  def change
    change_column :tasks, :time_elapsed, :integer
    change_column :tasks, :time_est, :integer
  end
end
