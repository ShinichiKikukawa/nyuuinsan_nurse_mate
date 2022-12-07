class AddAmazonToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :amazon, :integer
  end
end
