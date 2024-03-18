data "azurerm_kubernetes_service_versions" "aks_latest_version" {
  location = azurerm_resource_group.aks_resource_group.location
  include_preview = false
}


output "aks_latest_version" {
    description = "Latest available version of AKS"
    value = data.azurerm_kubernetes_service_versions.aks_latest_version.latest_version
}

output "aks_available_versions" {
  description = "All available version of AKS in the mentioned location"
  value = data.azurerm_kubernetes_service_versions.aks_latest_version.versions
}