terraform {
  required_providers {
    mssql = {
      source  = "betr-io/mssql"
      version = "0.3.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.40.0"
    }
  }
}
