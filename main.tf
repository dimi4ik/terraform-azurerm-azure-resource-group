################################################################
# Resource Group                                               #
# 							       #
# This resource block defines an Azure Resource Group.         #
# It creates a resource group with the specified name,location #
# and tags.  						       #
#################################################################

terraform {
  backend "http" {
    address        = "https://gitlab.com/api/v4/projects/<PROJECT_ID>/terraform/state/<STATE_NAME>"
    lock_address   = "https://gitlab.com/api/v4/projects/<PROJECT_ID>/terraform/state/<STATE_NAME>/lock"
    unlock_address = "https://gitlab.com/api/v4/projects/<PROJECT_ID>/terraform/state/<STATE_NAME>/lock"
    lock_method    = "POST"
    unlock_method  = "DELETE"
    username       = "gitlab-user"
    password       = "gitlab-token"
  }
}

# Hinweis: Ersetzen Sie <PROJECT_ID> und <STATE_NAME> durch die entsprechenden Werte.

resource "azurerm_resource_group" "main_rg" {
  name     = local.resource_group_name
  location = var.location
  tags     = local.merged_tags
}
