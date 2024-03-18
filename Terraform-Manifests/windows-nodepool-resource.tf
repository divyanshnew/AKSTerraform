resource "azurerm_kubernetes_cluster_node_pool" "windows_node_pool" {
    name = var.windows_nodepool_name
    vnet_subnet_id = azurerm_subnet.aks_subnet.id
    zones = [1, 2, 3]
    enable_auto_scaling = true
    max_count = 3
    min_count = 1
    vm_size = var.windows_nodepool_vm_size
    kubernetes_cluster_id = azurerm_kubernetes_cluster.prod_aks_cluster.id
    mode = "User"
    orchestrator_version = azurerm_kubernetes_cluster.prod_aks_cluster.kubernetes_version
    os_disk_size_gb = 30
    os_type = "Windows"
    priority = "Regular"
    node_labels = {
    "nodepool-type" = "user"
    "environment"   = var.environment[2]
    "nodepoolos"    = "windows"
    "app"           = "dotnet-apps"
    }
    tags = {
    "nodepool-type" = "user"
    "environment"   = var.environment[2]
    "nodepoolos"    = "windows"
    "app"           = "dotnet-apps"
    }
}