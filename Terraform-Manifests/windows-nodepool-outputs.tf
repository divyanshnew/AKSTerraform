output "windows_vm_nodepool_id" {
  description = "Windows VM Nodepool id"
  value = azurerm_kubernetes_cluster_node_pool.windows_node_pool.id
}