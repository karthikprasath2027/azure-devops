module "db" {
  source              = "../../../modules/db"
  resource_group_name = var.resource_group_name
  location            = var.location
  db_name             = var.db_name
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  sku_name            = var.sku_name
}