################################################################
# Resource Group                                               #
# 							                                               #
# This resource block defines an Azure Resource Group.         #
# It creates a resource group with the specified name,location #
# and tags.  						                                       #
#################################################################

resource "azurerm_resource_group" "main_rg" {
  name     = local.resource_group_name
  location = var.location
  tags     = local.merged_tags
}

resource "azurerm_resource_group" "main_rg2" {
  name     = local.resource_group_name
  location = var.location
  tags     = local.merged_tags
}
