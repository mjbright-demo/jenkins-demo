terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.16.0"
    }
  }
}

provider "azurerm" {
  features {}

  # Pickup from ~/.azure:
  # subscription_id = "<your subscription id here>"
}

terraform {
  backend "azurerm" {
    #resource_group_name  = "RG1"
    resource_group_name  = "studentN"
    storage_account_name = "mjbrightc0storage"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

#resource "azurerm_resource_group" "example" {
#  name     = "RG2"
#  location = "westeurope"
#}
