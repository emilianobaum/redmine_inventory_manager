class CreateInventoryMovements < ActiveRecord::Migration[7.0]
  def change
    create_table :inventory_movements do |t|
      t.integer :inventory_part_id
      t.float :quantity
      t.string :document
      t.integer :document_type
      t.float :value
      t.integer :inventory_providor_id
      t.string :project_id
      t.string :other_destiny
      t.datetime :date
      t.integer :user_id
    end
  end
end
