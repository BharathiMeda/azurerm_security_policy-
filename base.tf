terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">=2.99.1"
    }
  }
}

provider "azurerm" {
    features {}
}