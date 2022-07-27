provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {}
}

resource "azurerm_resource_group" "resourcegroup" {
  name = "S2-RG-Test42"
  location = "westeurope"
}
