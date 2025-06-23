resource "azurerm_storage_account" "this" {
  name                     = var.storage_account_name  # must be 3-24 chars, only lowercase letters and numbers, no hyphens
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "this" {
  name                  = var.container_name
  storage_account_id    = azurerm_storage_account.this.id
  container_access_type = "private"
}
