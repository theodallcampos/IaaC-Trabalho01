resource "azurerm_storage_blob" "mack" {
  name                   = "teste-blob-mack.txt"
  storage_account_name   = azurerm_storage_account.mack.name
  storage_container_name = azurerm_storage_container.mack.name
  type                   = "Block"
  source                 = "main-az.tf"
}
