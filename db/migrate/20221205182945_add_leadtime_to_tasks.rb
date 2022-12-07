class AddLeadtimeToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :leadtime, :string
  end
end
