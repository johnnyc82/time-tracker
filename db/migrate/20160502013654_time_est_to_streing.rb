class TimeEstToStreing < ActiveRecord::Migration
  def change
    change_column :tasks, :time_estimated, :string
  end
end
