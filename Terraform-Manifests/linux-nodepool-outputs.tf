output "linux_nodepool_id" {
  description = "ID of the Linux node pool"
  value = azurerm_kubernetes_cluster_node_pool.linux_node_pool.id
}