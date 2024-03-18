output "aks_cluster_name" {
  description = "Name of the AKS cluster"
  value = azurerm_kubernetes_cluster.prod_aks_cluster.name
}

output "aks_cluster_id" {
  description = "ID of the AKS Cluster"
  value = azurerm_kubernetes_cluster.prod_aks_cluster.id
}

output "aks_cluster_version" {
  description = "Kubernetes Cluster Version"
  value = azurerm_kubernetes_cluster.prod_aks_cluster.kubernetes_version
}