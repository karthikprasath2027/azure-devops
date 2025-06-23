terraform {
  backend "azurerm" {
    resource_group_name   = "azure-devops"
    storage_account_name  = "backendazure00"
    container_name        = "tfstate"
    key                   = "dev/vnet/terraform.tfstate"
  }
}