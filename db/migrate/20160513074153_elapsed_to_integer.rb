class ElapsedToInteger < ActiveRecord::Migration
  def change
    change_column :tasks, :time_elapsed, :string
  end
end
