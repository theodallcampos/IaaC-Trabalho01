terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  
  subscription_id = "3dd4a6ef-e800-4ae1-9c13-17b3e7cb1279"
  client_id       = "9afe694c-d375-4e9a-b238-c9986e9daf0e" 
  client_secret   = "0bf8b0af-fa08-4922-ae13-d044325b95be"
  tenant_id       = "dc322dbe-8018-48a9-8afc-0140f5846f50"

}
