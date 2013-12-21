class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name, null: false
      t.decimal :total_spent, null: false

      t.timestamps
    end
  end
end