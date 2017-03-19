class ChangeStatusToInt < ActiveRecord::Migration
  def change
    change_column :lists, :status, :integer
  end
end
