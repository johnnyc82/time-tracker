class AddForeignKey < ActiveRecord::Migration
  def change
    add_foreign_key :tasks, :lists
    add_column :tasks, :list_id, :integer
  end
end
