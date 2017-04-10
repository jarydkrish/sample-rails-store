class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.references :customer, foreign_key: true
      t.boolean :is_primary
      t.string :business
      t.string :line_1
      t.string :line_2
      t.string :city
      t.references :state, foreign_key: true
      t.references :country, foreign_key: true
      t.string :zip

      t.timestamps
    end
  end
end
