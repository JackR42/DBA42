provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "resourcegroup" {
  name = "S2-RG-Test42"
  location = "eu west"
}
