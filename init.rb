Redmine::Plugin.register :redmine_inventory_manager do
  name 'Redmine Inventory Manager Plugin'
  author 'Daniel Anguita O.'
  updated 'Emiliano Baum'
  description 'Take your warehouse or office inventory on the same platform of your projects'
  version '0.9'
  url 'https://github.com/danielanguita/Redmine-Inventory-Manager'

  # permission :inventory, {:inventory => [:index, :movements, :categories, :parts, :warehouses, :providors]}, :public => false

  permission :view_inventory, {:inventory => [:index, :movements]}
  permission :manage_inventory_parts, {:inventory => [:parts, :categories, :warehouses]}
  permission :manage_inventory_providors, {:inventory => [:providors]}

  menu :top_menu, :inventory, { :controller => 'inventory', :action => 'index' }, { :caption => 'Inventory', :before => 'admin'}
  	
  settings :default => {'empty' => true}, :partial => 'settings/rim_settings'
end

