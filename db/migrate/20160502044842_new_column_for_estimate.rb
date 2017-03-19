class NewColumnForEstimate < ActiveRecord::Migration
  def change
    add_column :tasks, :time_est, :string
  end
end
