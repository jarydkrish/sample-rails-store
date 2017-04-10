class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :birth_date

      t.timestamps
    end
  end
end
