module "nsg" {
  source              = "../../../modules/nsg"
  resource_group_name = var.resource_group_name
  location            = var.location
  nsg_name            = var.nsg_name
  security_rules      = var.security_rules
}