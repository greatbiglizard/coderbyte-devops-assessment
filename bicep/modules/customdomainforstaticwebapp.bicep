@description('FQDN pf the custom domain for the static web app to use.')
param customDomain string

@description('Name of the Static Web App.')
param appName string

resource staticWebApp 'Microsoft.Web/staticSites@2021-03-01' existing = {
  name: appName

}

resource staticWebApp_customDomain 'Microsoft.Web/staticSites/customDomains@2023-01-01' = {
  parent: staticWebApp
  name: customDomain
  properties: {}
}
