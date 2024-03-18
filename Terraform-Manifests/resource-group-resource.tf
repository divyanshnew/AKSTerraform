resource "azurerm_resource_group" "aks_resource_group" {
    name = "${var.rg_name}-${var.environment[2]}"
    location = var.location

  
}