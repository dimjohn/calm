class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.datetime :order_time
      t.integer :order_number
      t.integer :price
      t.integer :total_price
      t.references :meal, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
