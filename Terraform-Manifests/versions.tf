terraform {
  required_version = ">=1.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "value"
    }
    azuread = {
      source = "hashicorp/azuread"
      version = "value"
    }
    random = {
      source = "hashicorp/random"
      version = "value"
    }
  }
  backend "azurerm" {
    resource_group_name = "aks-rg"
    storage_account_name = "somesaforaks-aks-sa"
    container_name = "tfstatefiles"
    key = "${var.environment[2]}.terraform.tfstate"
  }
}


provider "azurerm" {
    features {} 
}

