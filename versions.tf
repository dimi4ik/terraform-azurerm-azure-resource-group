# This Terraform configuration file specifies the required version of Terraform and the required providers.
# The required version of Terraform is set to ">= 1.2".
# The required provider is "azurerm" with a minimum version of ">= 3.0.0" and less than "5.0.0".
terraform {
  required_version = ">= 1.2"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0, < 5.0.0"
    }
  }
}
