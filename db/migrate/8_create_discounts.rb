class CreateDiscounts < ActiveRecord::Migration[5.0]
  def change
    create_table :discounts do |t|
      t.string :code
      t.decimal :amount
      t.string :type

      t.timestamps
    end
  end
end
