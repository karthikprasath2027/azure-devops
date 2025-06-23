variable "resource_group_name" { type = string }
variable "location" { type = string }
variable "storage_account_name" {
  type        = string
  description = "The name of the storage account. Must be 3-24 chars, lowercase letters and numbers only."
}
variable "container_name" { type = string }