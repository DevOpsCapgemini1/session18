
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}
provider "azurerm" {
  features {}
}
data "azurerm_subscription" "current" {}


resource "azurerm_template_deployment" "terraform-arm" {
  name                = "terraform-arm-03"
  resource_group_name = "session18"

  template_body = file("main.json")

  parameters = {
    "appGatewayName"    = "mbidzins-app-gateway"
    "resourceGroupName" = "session18"
    "dashboardName"     = "mbidizns-gatway-dashboard"

  }

  deployment_mode = "Incremental"
}
