class CreateInventoryProvidors < ActiveRecord::Migration[7.0]
  def change
    create_table :inventory_providors do |t|
      t.string :identification
      t.string :name
      t.string :address0
      t.string :address1
      t.string :city
      t.string :state
      t.string :country
      t.string :phone0
      t.string :phone1
      t.string :fax
      t.string :business
      t.string :email
      t.string :contact0
      t.string :contact1
    end
  end
end
