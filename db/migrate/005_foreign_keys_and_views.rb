class ForeignKeysAndViews < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :inventory_movements, :inventory_parts, column: :inventory_part_id, on_delete: :restrict, on_update: :restrict
    add_foreign_key :inventory_movements, :inventory_providors, column: :inventory_providor_id, on_delete: :restrict, on_update: :restrict
    add_foreign_key :inventory_parts, :inventory_categories, column: :inventory_category_id, on_delete: :restrict, on_update: :restrict
  end
end
