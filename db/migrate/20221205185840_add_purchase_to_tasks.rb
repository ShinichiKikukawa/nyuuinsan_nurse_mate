class AddPurchaseToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :purchase, :integer
  end
end
