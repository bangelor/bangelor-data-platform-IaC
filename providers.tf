terraform {
  required_version = ">=1.0"

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
  backend "azurerm" {
    subscription_id = "a33284d9-663f-4d5a-941c-bcb428c75973"
    resource_group_name  = "lbn-terraform-backend"
    storage_account_name = "lbnterraformbackend" 
    container_name       = "tfstatedev"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}