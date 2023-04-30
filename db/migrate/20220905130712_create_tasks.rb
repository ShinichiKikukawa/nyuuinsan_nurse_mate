class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.date :date
      t.string :name
      t.text :description
      t.text :company
      t.references :user, foreign_key: true

      t.timestamps
    end
      add_index :tasks, [:user_id, :created_at]
  end
end
