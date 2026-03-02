# Configuración de Permisos

## Permisos Disponibles

Este plugin ahora permite asignar permisos granulares a diferentes roles de usuario:

### 1. Ver inventario (view_inventory)
- Permite ver el stock de inventario
- Permite ver reportes
- Permite exportar datos

### 2. Gestionar movimientos de inventario (manage_inventory_movements)
- Permite crear, editar y eliminar movimientos de entrada y salida
- Permite registrar transferencias entre bodegas

### 3. Gestionar productos (manage_inventory_parts)
- Permite crear, editar y eliminar productos del inventario

### 4. Gestionar categorías (manage_inventory_categories)
- Permite crear, editar y eliminar categorías de productos

### 5. Gestionar bodegas (manage_inventory_warehouses)
- Permite crear, editar y eliminar bodegas
- Permite asignar administradores de bodega

### 6. Gestionar proveedores (manage_inventory_providors)
- Permite crear, editar y eliminar proveedores

## Cómo Configurar los Permisos

1. Ve a **Administración** → **Roles y permisos**
2. Selecciona el rol que deseas configurar (ej: Manager, Developer, Reporter)
3. En la sección de permisos, busca los permisos de **Inventory**
4. Marca los permisos que deseas otorgar a ese rol
5. Guarda los cambios

## Ejemplo de Configuración

### Rol: Administrador de Bodega
- ✓ Ver inventario
- ✓ Gestionar movimientos de inventario
- ✓ Gestionar productos
- ✓ Gestionar categorías

### Rol: Operador de Bodega
- ✓ Ver inventario
- ✓ Gestionar movimientos de inventario

### Rol: Consultor
- ✓ Ver inventario

## Notas Importantes

- Los permisos son globales (no están asociados a proyectos específicos)
- Debes reiniciar Redmine después de instalar o actualizar el plugin
- Los administradores de Redmine siempre tienen acceso completo
