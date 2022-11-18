resource "azurerm_storage_container" "mack" {
  name                  = "mackcontainer"
  storage_account_name  = azurerm_storage_account.mack.name
  container_access_type = "private"
}
