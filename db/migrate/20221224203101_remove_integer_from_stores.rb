class RemoveIntegerFromStores < ActiveRecord::Migration[5.1]
  def change
    remove_column :stores, :integer, :string
  end
end
