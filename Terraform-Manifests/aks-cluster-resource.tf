resource "azurerm_kubernetes_cluster" "prod_aks_cluster" {
  name                = "${azurerm_resource_group.aks_resource_group.name}-cluster"
  location            = azurerm_resource_group.aks_resource_group.location
  resource_group_name = azurerm_resource_group.aks_resource_group.name
  dns_prefix          = "${azurerm_resource_group.aks_resource_group.name}-cluster"
  kubernetes_version = data.azurerm_kubernetes_service_versions.aks_latest_version.latest_version
  node_resource_group = "${azurerm_resource_group.aks_resource_group.name}-nrg"



  default_node_pool {
    name       = "systemnodepool"
    vnet_subnet_id = azurerm_subnet.aks_subnet.id
    vm_size    = var.node_vm_size
    orchestrator_version = data.azurerm_kubernetes_service_versions.aks_latest_version.latest_version
    zones = [1, 2, 3]
    enable_auto_scaling = var.enable_auto_scaling
    max_count = 3
    min_count = 1
    os_disk_size_gb = var.os_disk_size_gb
    type = var.nodepool_type
    node_labels = var.node_labels
    tags = var.node_labels #Same as Node labels

  }
  oms_agent {
    log_analytics_workspace_id = azurerm_log_analytics_workspace.container_insights.id
  }

  azure_policy_enabled = var.azure_policy_enabled

  role_based_access_control_enabled = var.role_based_access_control_enabled
  azure_active_directory_role_based_access_control {
    managed = true
    admin_group_object_ids = [azuread_group.aks_administrator_group.object_id]
  }

  windows_profile {
    admin_username = var.windows_admin_user
    admin_password = var.windows_admin_password
  }

  linux_profile {
    admin_username = var.linux_admin_username
    ssh_key {
      key_data = file(var.public_ssh_key)
    }
  }

  network_profile {
    network_plugin = "azure"
    load_balancer_sku = "Standard"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = var.environment[2]
  }
}