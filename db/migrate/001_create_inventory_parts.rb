class CreateInventoryParts < ActiveRecord::Migration[7.0]
  def change
    create_table :inventory_parts do |t|
      t.string :part_number
      t.string :manufacturer
      t.integer :inventory_category_id
      t.text :description
      t.float :value
      t.integer :status
    end
  end
end
