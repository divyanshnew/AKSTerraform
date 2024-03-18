node_vm_size = "Standard_D2_v2"
enable_auto_scaling = true
os_disk_size_gb = 30
nodepool_type = "VirtualMachineScaleSets"
node_labels = {
      "nodepool-type"    = "system"
      "environment"      = "dev"
      "nodepoolos"       = "linux"
      "app"              = "system-apps" 
    }
azure_policy_enabled = true
role_based_access_control_enabled = true


public_ssh_key = "~/.ssh/aks-prod-sshkeys-terraform/aksprodsshkey.pub"
windows_admin_user = "azureuser"
windows_admin_password = "Pass@123$#"
linux_admin_username = "ubuntu"