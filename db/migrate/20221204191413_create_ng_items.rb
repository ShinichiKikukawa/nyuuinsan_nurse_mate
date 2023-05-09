class CreateNgItems < ActiveRecord::Migration[5.1]
  def change
    create_table :ng_items do |t|
      t.date :date
      t.string :name
      t.text :description
      t.text :company
      t.integer :user_id
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
      t.string :store
      t.timestamps
    end
  end
end
