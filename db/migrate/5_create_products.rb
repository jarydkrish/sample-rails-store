class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.boolean :is_published
      t.string :title
      t.text :description
      t.string :meta_title
      t.text :meta_description
      t.string :meta_keywords
      t.decimal :price

      t.timestamps
    end
  end
end
