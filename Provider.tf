provider "azurerm" {
  features {
    
  }
}
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.55.0"
    }
  }
}

data "azurerm_resource_group" "rg" {
  name = "learn-554d3ae4-a4c4-497f-8d3f-74184bc56c67"
}
output "rgname" {
  value = data.azurerm_resource_group.rg.name   
}