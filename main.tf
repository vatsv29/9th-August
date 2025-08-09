terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.39.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "nits1"
    storage_account_name = "nitsstg1"
    container_name       = "vaibhavcontainer"
    key                  = "vaibhav.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "5d1da8c6-c1dd-436c-b5a9-d2829de796dc"
}


resource "azurerm_resource_group" "vaibhav1" {
  name     = "vaibhavg102"
  location = "West Europe"
}



