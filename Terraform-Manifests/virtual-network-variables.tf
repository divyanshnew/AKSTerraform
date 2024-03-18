variable "aks_vnet_name" {
  description = "Name of the default virtual Network"
  type = string
}

variable "vnet_address_space" {
  description = "Address space of the Virtual Network"
  type = list(string)
}



variable "subnet_name" {
  description = "Name of the subnet"
  type = string
}

variable "subnet_address_prefixes" {
  description = "Default Subnet address prefix"
  type = list(string)
}