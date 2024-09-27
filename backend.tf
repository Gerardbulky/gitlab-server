
terraform {
  backend "azurerm" {
    resource_group_name   = var.resource_group_name
    storage_account_name  = var.storage_account_name  # Replace with your storage account name
    container_name        = var.container_name
    key                   = var.key                   # This is the file name in the blob container
  }
}
