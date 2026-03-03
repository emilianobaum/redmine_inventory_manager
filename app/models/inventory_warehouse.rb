class InventoryWarehouse < ActiveRecord::Base
  has_many :movements_from, class_name: 'InventoryMovement', foreign_key: 'warehouse_from_id'
  has_many :movements_to, class_name: 'InventoryMovement', foreign_key: 'warehouse_to_id'
  belongs_to :user_manager, class_name: 'User', foreign_key: 'user_manager_id', optional: true
  
  validates_presence_of :name
end
