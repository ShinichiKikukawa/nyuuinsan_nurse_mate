class AddKeepaToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :keepa, :string
  end
end
