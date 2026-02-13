class CreateInventoryWarehouses < ActiveRecord::Migration[7.0]
  def change
    create_table :inventory_warehouses do |t|
      t.string :name
      t.string :location
    end
  end
end
