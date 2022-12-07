class AddExpenseToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :expense, :integer
  end
end
