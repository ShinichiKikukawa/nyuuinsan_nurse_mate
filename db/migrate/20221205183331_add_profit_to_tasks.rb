class AddProfitToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :profit, :integer
  end
end
