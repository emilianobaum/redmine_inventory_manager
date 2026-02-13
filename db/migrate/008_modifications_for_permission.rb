class ModificationsForPermission < ActiveRecord::Migration[7.0]
  def change
    add_column :inventory_warehouses, :user_manager_id, :integer
  end
end
