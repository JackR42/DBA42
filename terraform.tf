provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {}
}

resource "azurerm_resource_group" "DBA42" {
  name = "S2-RG-Test42"
  location = "westeurope"
}

resource "azurerm_sql_server" "DBA42" {
  name                         = "SQLSERVER42"
  resource_group_name          = azurerm_resource_group.DBA42.name
  location                     = azurerm_resource_group.DBA42.location
  version                      = "12.0"
  administrator_login          = "admindba"
  administrator_login_password = "ABCabc123.42"
}

resource "azurerm_sql_database" "DBA42" {
  name                = "DBA42"
  resource_group_name = azurerm_resource_group.DBA42.name
  location            = azurerm_resource_group.DBA42.location
  server_name         = azurerm_sql_server.DBA42.name
