class AddMercariToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :mercari, :integer
  end
end
