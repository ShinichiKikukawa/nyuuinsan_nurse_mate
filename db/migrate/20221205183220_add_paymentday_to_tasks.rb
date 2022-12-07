class AddPaymentdayToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :paymentday, :date
  end
end
