
# When upgrading to version .13, the state file has reference to -/azurerm, -/external, -/null.  This causes two different versions to be downloaded.
# To fix this, run the following:

/*
terraform state replace-provider -- -/azurerm hashicorp/azurerm
terraform state replace-provider -- -/external hashicorp/external
terraform state replace-provider -- -/null hashicorp/null
*/

terraform {
  required_version = ">= 0.13"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm",
      version = "~> 1.44.0"
    }
    external = {
      source = "hashicorp/external",
      version = "~> 1.2.0"
    }
    null = {
      source = "hashicorp/null",
      version = "~> 2.1.2"
    }
  }
  backend "azurerm" {}
}