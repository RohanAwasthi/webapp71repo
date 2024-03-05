terraform {               //for log in ssh azureuser@publicip
  required_providers {    //exit for log out
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.66.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  
  features {}
  subscription_id = "f7bf6513-16fa-4cbc-aee7-5513b6020ce4"
  
}

