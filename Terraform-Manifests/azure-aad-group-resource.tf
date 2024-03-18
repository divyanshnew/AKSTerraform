resource "azuread_group" "aks_administrator_group" {
  display_name = "${azurerm_resource_group.aks_resource_group.name}-${var.azuread_name_suffix}"
  description = "Azure AKS Kubernetes administrators for the ${azurerm_resource_group.aks_resource_group.name}-cluster"
}