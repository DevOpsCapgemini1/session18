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
resource "azurerm_application_insights" "example" {
  name                = "App-Insights-2"
  location            = "westeurope"
  resource_group_name = "session18"
  application_type    = "web"
}

resource "azurerm_application_insights_web_test" "example" {
  name                    = "Pingtest-web-test"
  location                = azurerm_application_insights.example.location
  resource_group_name     = "session18"
  application_insights_id = azurerm_application_insights.example.id
  kind                    = "ping"
  frequency               = 300
  timeout                 = 30
  enabled                 = true
  geo_locations           = ["us-il-ch1-azr"]

  configuration = <<XML
<WebTest Name="WebTest1" Id="650ff462-b428-4f40-ad8f-1248886a360e" Enabled="True" CssProjectStructure="" CssIteration="" Timeout="0" WorkItemIds="" xmlns="http://microsoft.com/schemas/VisualStudio/TeamTest/2010" Description="" CredentialUserName="" CredentialPassword="" PreAuthenticate="True" Proxy="default" StopOnError="False" RecordedResultFile="" ResultsLocale="">
  <Items>
    <Request Method="GET" Guid="a5f10126-e4cd-570d-961c-cea43999a200" Version="1.1" Url="https://mbidzins-webapp.azurewebsites.net" ThinkTime="0" Timeout="300" ParseDependentRequests="True" FollowRedirects="True" RecordResult="True" Cache="False" ResponseTimeGoal="0" Encoding="utf-8" ExpectedHttpStatusCode="200" ExpectedResponseUrl="" ReportingName="" IgnoreHttpStatusCode="False" />
  </Items>
</WebTest>
XML

}

