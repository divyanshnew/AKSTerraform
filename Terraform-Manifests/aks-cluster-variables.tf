variable "node_vm_size" {
  description = "Size of the system nodepool VM"
  type = string
}


variable "enable_auto_scaling" {
  description = "Please put yes if you want to enablw autoscaling for nodes"
  type = bool
}

variable "os_disk_size_gb" {
    description = "OS disk size of the node pool Vm"
    type = number
}

variable "nodepool_type" {
  description = "Nodepool type VirtualMachineScaleSets, AvailabilitySets"
  type = string
}

variable "node_labels" {
  description = "K8s Node lables to schedule pods on the node"
  type = map(string)
}

variable "azure_policy_enabled" {
  description = "Put as yes if you want to enable"
  type = bool
}

variable "role_based_access_control_enabled" {
  description = "Put as true if you want this to be enabled"
  type = bool
}


########################################### FOR CLUSTER LOGIN ########################################################################

/*
# Create Folder
mkdir $HOME/.ssh/aks-prod-sshkeys-terraform

# Create SSH Key
ssh-keygen \
    -m PEM \
    -t rsa \
    -b 4096 \
    -C "azureuser@myserver" \
    -f ~/.ssh/aks-prod-sshkeys-terraform/aksprodsshkey \
    -N mypassphrase

# List Files
ls -lrt $HOME/.ssh/aks-prod-sshkeys-terraform
*/


variable "public_ssh_key" {
  description = "SSH key to login to the cluster linux nodes"
  type = string
}

variable "windows_admin_user" {
  description = "Admin username to login to the cluster windows nodes"
  type = string
}

variable "windows_admin_password" {
  description = "Admin user password to login to the cluster windows nodes"
  type = string
}

variable "linux_admin_username" {
  description = "Admin username to login linux nodepool servers"
  type = string
}