provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {}
}

resource "azurerm_resource_group" "rg" {
  name = "S2-RG-Test42"
  location = "westeurope"
}
