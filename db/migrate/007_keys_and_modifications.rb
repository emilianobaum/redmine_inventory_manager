class KeysAndModifications < ActiveRecord::Migration[7.0]
  def change
    add_index :inventory_parts, :part_number, unique: true
    add_index :inventory_categories, :name, unique: true
    add_index :inventory_providors, :identification, unique: true
    
    add_column :inventory_movements, :user_from_id, :integer
    add_column :inventory_movements, :user_to_id, :integer
    add_column :inventory_movements, :warehouse_to_id, :integer
    add_column :inventory_movements, :warehouse_from_id, :integer
    add_column :inventory_movements, :serial_number, :string
    
    add_foreign_key :inventory_movements, :inventory_warehouses, column: :warehouse_to_id, on_delete: :restrict, on_update: :restrict
    add_foreign_key :inventory_movements, :inventory_warehouses, column: :warehouse_from_id, on_delete: :restrict, on_update: :restrict
    add_foreign_key :inventory_movements, :users, column: :user_id, on_delete: :restrict, on_update: :restrict
    add_foreign_key :inventory_movements, :users, column: :user_from_id, on_delete: :restrict, on_update: :restrict
    add_foreign_key :inventory_movements, :users, column: :user_to_id, on_delete: :restrict, on_update: :restrict
    
    add_column :inventory_parts, :where, :string
  end
end
