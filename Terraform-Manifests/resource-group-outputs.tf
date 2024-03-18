output "rg_location" {
    description = "Location of the resource group"
    value = azurerm_resource_group.aks_resource_group.location
}

output "rg_name" {
  description = "Name of the resource group"
  value = azurerm_resource_group.aks_resource_group.name
}

output "rg_id" {
  description = "ID of the Resource group"
  value = azurerm_resource_group.aks_resource_group.id
}