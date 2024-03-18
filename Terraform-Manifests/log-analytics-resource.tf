resource "azurerm_log_analytics_workspace" "container_insights" {
  name                = "logs-${random_string.myrandomstring.id}"
  location            = azurerm_resource_group.aks_resource_group.location
  resource_group_name = azurerm_resource_group.aks_resource_group.name
  retention_in_days   = var.retention_in_days

}