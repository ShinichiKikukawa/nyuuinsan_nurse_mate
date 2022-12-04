class AddStoreToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :store, :string
  end
end
