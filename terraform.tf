provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {}
}

resource "azurerm_resource_group" "project42" {
  name = "S2-RG-Test42"
  location = "westeurope"
}

resource "azurerm_mssql_server" "project42" {
  name                         = "sqlserver42x689e6e9"
  resource_group_name          = azurerm_resource_group.project42.name
  location                     = azurerm_resource_group.project42.location
  version                      = "12.0"
  administrator_login          = "admindba"
  administrator_login_password = "ABCabc123.42"
}

#resource "azurerm_sql_database" "project42" {
#  name                = "dba42"
#  resource_group_name = azurerm_resource_group.project42.name
#  location            = azurerm_resource_group.project42.location
#  server_name         = azurerm_sql_server.project42.name
#}
