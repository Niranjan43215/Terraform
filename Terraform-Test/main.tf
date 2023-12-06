provider "azurerm" {
  subscription_id = "1d012c12-eb7c-4bc4-aba7-d34e5c20bf00"
  client_id       = "3b448e7b-cec3-4ad6-b8e1-0d8c6efb20f4"
  client_secret   = "yYe8Q~e7LNbjWOOiJchd0aA7L9P5hFTwYPfHFcl~"
  tenant_id       = "e1c5d9ee-a951-451e-8432-642c23d40071"
  features {}
}
locals {
  resource_group="app-grp"
  location="North Europe"  
}

resource "azurerm_resource_group" "app_grp"{
  name=local.resource_group
  location=local.location
}