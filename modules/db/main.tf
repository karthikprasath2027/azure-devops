resource "azurerm_postgresql_server" "this" {
  name                            = var.db_name
  location                        = var.location
  resource_group_name             = var.resource_group_name
  administrator_login             = var.admin_username
  administrator_login_password    = var.admin_password
  sku_name                        = var.sku_name
  version                         = "11"
  storage_mb                      = 5120
  backup_retention_days           = 7
  geo_redundant_backup_enabled    = false
  auto_grow_enabled               = true
  public_network_access_enabled   = true
  ssl_enforcement_enabled         = true
}