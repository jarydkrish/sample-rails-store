class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.string :meta_title
      t.text :meta_description
      t.string :meta_keywords

      t.timestamps
    end

    create_table :products_categories, id: false do |t|
      t.references :category, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :sort_order

      t.timestamps
    end
  end
end
