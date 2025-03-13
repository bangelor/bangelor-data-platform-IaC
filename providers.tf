terraform {
  required_version = ">=1.0"

  backend "azurerm" {
    resource_group_name  = var.resource_group_name_backend
    storage_account_name = var.storage_account_name_backend
    container_name       = var.container_name_backend
    key                  = "terraform.tfstate"
  }

  required_providers {
    azapi = {
      source  = "azure/azapi"
      version = "~>1.5"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.9.1"
    }
  }
}

provider "azurerm" {
  features {}
}