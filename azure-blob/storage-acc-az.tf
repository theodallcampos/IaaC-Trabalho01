resource "azurerm_storage_account" "mack" {
  name                     = "mackiaactdc"
  resource_group_name      = azurerm_resource_group.mack.name
  location                 = azurerm_resource_group.mack.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
