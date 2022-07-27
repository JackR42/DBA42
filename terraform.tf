provider "azurerm" {
  version = "latest"
  features {}
}

terraform {
    backend "azurerm"{
      resource_group_name = "S2-RG-DevOps"
      storage_account_name = "s2storageaccountdevops42"
      container_name = "terraform.tfstate"
    }
}
