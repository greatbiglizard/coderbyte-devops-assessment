param appName string
param repositoryUrl string
param repositoryBranch string

param location string = resourceGroup().location
param skuName string = 'Free'
param skuTier string = 'Free'
param customDomain string

resource staticWebApp 'Microsoft.Web/staticSites@2021-03-01' = {
  name: appName
  location: location
  sku: {
    name: skuName
    tier: skuTier
  }
  properties: {
    provider: 'DevOps'
    repositoryUrl: repositoryUrl
    branch: repositoryBranch
    buildProperties: {
      skipGithubActionWorkflowGeneration: true
    }
  }
}

resource staticWebApp_customDomain 'Microsoft.Web/staticSites/customDomains@2023-01-01' = {
  parent: staticWebApp
  name: customDomain
  properties: {}
}

output staticWebAppDefaultHostName string = staticWebApp.properties.defaultHostname
output staticWebAppId string = staticWebApp.id
output staticWebAppName string = staticWebApp.name
