output "vnet_name" {
  description = "Name of the virtual network"
  value = azurerm_virtual_network.aks_vnet.name
}

output "vnet_id" {
  description = "Id of the Virtual Network"
  value = azurerm_virtual_network.aks_vnet.id
}





output "subnet_name" {
  description = "Name of the default subnet"
  value = azurerm_subnet.aks_subnet.name
}

output "subnet_id" {
  description = "ID of the default subnet"
  value = azurerm_subnet.aks_subnet.id
}