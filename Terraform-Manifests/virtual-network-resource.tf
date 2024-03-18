resource "azurerm_virtual_network" "aks_vnet" {
  name = var.aks_vnet_name
  location = azurerm_resource_group.aks_resource_group.location
  resource_group_name = azurerm_resource_group.aks_resource_group.name
  address_space = var.vnet_address_space
}


resource "azurerm_subnet" "aks_subnet" {
  name = var.subnet_name
  address_prefixes = var.subnet_address_prefixes
  resource_group_name = azurerm_resource_group.aks_resource_group.name
  virtual_network_name = azurerm_virtual_network.aks_vnet.name
}