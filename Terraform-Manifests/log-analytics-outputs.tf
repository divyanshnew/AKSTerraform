output "log_nanlytics_workspace_id" {
  description = "Log Analytics workspace ID"
  value = azurerm_log_analytics_workspace.container_insights.id
}