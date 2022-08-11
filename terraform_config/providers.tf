terraform {

  required_version = ">= 0.14.9"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }

    azurerm = {
       source = "hashicorp/azurerm"
       version = "~>2.0"
     }
  }
}

provider "aws" {
  region  = "us-west-2"
}
 
provider "azurerm" {
  features {}
  skip_provider_registration = true
}