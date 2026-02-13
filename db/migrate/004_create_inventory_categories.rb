class CreateInventoryCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :inventory_categories do |t|
      t.string :name
      t.text :description
    end
  end
end
