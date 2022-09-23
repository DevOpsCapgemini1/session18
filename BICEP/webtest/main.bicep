param appInsightName string = 'app-insights'

param urlToPing string = 'https://www.microsoft.com/'

param pingText string = 'azure'
param resourceGroupName string
param location string = resourceGroup().location
param webAppName string
var pingTestName = 'PingTest-${appInsightName}'
var webAppId = '/subscriptions/${subscription().id}/resourceGroups/${resourceGroupName}/providers/Microsoft.Web/sites/${webAppName}'
var appInsightsResource = '/subscriptions/${subscription().id}/resourceGroups/${resourceGroupName}/providers/Microsoft.Insights/components/${appInsightName}'

resource appInsight_resource 'Microsoft.Insights/components@2020-02-02' = {
  name: appInsightName
  location: location
  tags: {
    'hidden-link:${webAppId}': 'Resource'
  }
  kind: 'web'
  properties: {
    Application_Type: 'web'
  }
}

resource pingTest 'Microsoft.Insights/webtests@2015-05-01' = {
  name: pingTestName
  location: location
  tags: {
    'hidden-link:${appInsightsResource}': 'Resource'
  }
  properties: {
    Name: pingTestName
    Description: 'Ping test to microsoft.com '
    Enabled: true
    Frequency: 300
    Timeout: 30
    Kind: 'ping'
    RetryEnabled: true
    Locations: [
      {
        Id: 'us-il-ch1-azr'
      }
    ]
    Configuration: {
      WebTest: '<WebTest   Name="${pingTestName}"   Enabled="True"         CssProjectStructure=""    CssIteration=""  Timeout="120"  WorkItemIds=""         xmlns="http://microsoft.com/schemas/VisualStudio/TeamTest/2010"         Description=""  CredentialUserName=""  CredentialPassword=""         PreAuthenticate="True"  Proxy="default"  StopOnError="False"         RecordedResultFile=""  ResultsLocale="">  <Items>  <Request Method="GET"    Version="1.1"  Url="${urlToPing}" ThinkTime="0"  Timeout="300" ParseDependentRequests="True"         FollowRedirects="True" RecordResult="True" Cache="False"         ResponseTimeGoal="0"  Encoding="utf-8"  ExpectedHttpStatusCode="200"         ExpectedResponseUrl="" ReportingName="" IgnoreHttpStatusCode="False" />        </Items>  <ValidationRules> <ValidationRule  Classname="Microsoft.VisualStudio.TestTools.WebTesting.Rules.ValidationRuleFindText, Microsoft.VisualStudio.QualityTools.WebTestFramework, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" DisplayName="Find Text"         Description="Verifies the existence of the specified text in the response."         Level="High"  ExecutionOrder="BeforeDependents">  <RuleParameters>        <RuleParameter Name="FindText" Value="${pingText}" />  <RuleParameter Name="IgnoreCase" Value="False" />  <RuleParameter Name="UseRegularExpression" Value="False" />  <RuleParameter Name="PassIfTextFound" Value="True" />  </RuleParameters> </ValidationRule>  </ValidationRules>  </WebTest>'
    }
    SyntheticMonitorId: pingTestName
  }
  dependsOn: [
    appInsight_resource
  ]
}
