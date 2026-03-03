class InventoryMovement < ActiveRecord::Base
  belongs_to :inventory_part
  belongs_to :inventory_providor
  belongs_to :user
  belongs_to :project
  belongs_to :warehouse_from, class_name: 'InventoryWarehouse', foreign_key: 'warehouse_from_id'
  belongs_to :warehouse_to, class_name: 'InventoryWarehouse', foreign_key: 'warehouse_to_id'
  
  validates_presence_of :inventory_part, :quantity, :date, :user_id
  validate :check_stock_availability, on: :create
  
  def doctype
    doc_types = { 
      1 => l('invoice'), 
      2 => l('ticket'), 
      3 => l('proforma-invoice'), 
      4 => l("waybill"), 
      5 => l("inventory")
    }
    if self.document_type
      return doc_types[document_type]
    end
    return nil  
  end

  private

  def check_stock_availability
    return unless warehouse_from_id.present?
    
    available = calculate_available_stock
    if quantity.to_f > available
      errors.add(:quantity, I18n.t('out_of_stock'))
    end
  end

  def calculate_available_stock
    conditions = "warehouse_to_id = ? AND inventory_part_id = ?"
    params = [warehouse_from_id, inventory_part_id]
    
    if serial_number.present?
      conditions += " AND serial_number = ?"
      params << serial_number
    end
    
    inputs = InventoryMovement.where(conditions + " AND inventory_providor_id IS NULL AND user_from_id IS NULL", *params).sum(:quantity)
    outputs = InventoryMovement.where("warehouse_from_id = ? AND inventory_part_id = ?" + (serial_number.present? ? " AND serial_number = ?" : ""), warehouse_from_id, inventory_part_id, *([serial_number].compact)).sum(:quantity)
    
    inputs.to_f - outputs.to_f
  end

end
