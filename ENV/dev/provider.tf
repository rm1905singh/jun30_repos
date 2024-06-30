terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.100.0"
    }
  }
}

provider "azurerm" {
  features {

  }
}
# terraform {
#   backend "azurerm" {
#     resource_group_name  = "rm_rgs"
#     storage_account_name = "rmsa1"
#     container_name       = "rmca1"
#     key                  = "dev.terraform.tfstate"
#     use_azuread_auth     = true
#   }
# }
