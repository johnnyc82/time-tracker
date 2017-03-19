class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title
      t.string :status
      t.integer :task_total

      t.timestamps null: false
    end
  end
end
