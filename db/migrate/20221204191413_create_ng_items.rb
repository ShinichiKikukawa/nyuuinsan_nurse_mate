class CreateNgItems < ActiveRecord::Migration[5.1]
  def change
    create_table :ng_items do |t|
      t.string :name
      t.string :company
      t.string :store
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
