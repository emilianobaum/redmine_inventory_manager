Redmine::Plugin.register :redmine_inventory_manager do
  name 'Redmine Inventory Manager Plugin'
  author 'Daniel Anguita O./Emiliano Baum'  
  description 'Take your warehouse or office inventory on the same platform of your projects'
  version '1'
  url 'git@github.com:emilianobaum/redmine_inventory_manager.git'

  permission :view_inventory, {:inventory => [:index, :reports, :report_export, :inventory_stock_xls, :ajax_get_part_value, :ajax_get_part_info]}
  permission :manage_inventory_movements, {:inventory => [:movements]}
  permission :manage_inventory_parts, {:inventory => [:parts]}
  permission :manage_inventory_categories, {:inventory => [:categories]}
  permission :manage_inventory_warehouses, {:inventory => [:warehouses]}
  permission :manage_inventory_providors, {:inventory => [:providors]}

  menu :top_menu, :inventory, { :controller => 'inventory', :action => 'index' }, { :caption => 'Inventory', :before => 'admin'}
  	
  settings :default => {'empty' => true}, :partial => 'settings/rim_settings'
end

