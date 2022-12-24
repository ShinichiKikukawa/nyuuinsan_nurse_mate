class CreateStores < ActiveRecord::Migration[5.1]
  def change
    create_table :stores do |t|
      t.integer :company
      t.string :name
      t.string :address
      t.string :tel
      t.string :integer
      t.text :description

      t.timestamps
    end
  end
end
