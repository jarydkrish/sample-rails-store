class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :customer, foreign_key: true
      t.references :status, foreign_key: true
      t.string :order_hash
      t.references :shipping_address, references: :addresses
      t.references :billing_address, references: :addresses

      t.timestamps
    end
  end
end
