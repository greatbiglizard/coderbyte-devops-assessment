param staticSites_TeknoFireSite_name string = 'TeknoFireSite'

resource staticSites_TeknoFireSite_name_resource 'Microsoft.Web/staticSites@2023-01-01' = {
  name: staticSites_TeknoFireSite_name
  location: 'West Europe'
  sku: {
    name: 'Standard'
    tier: 'Standard'
  }
  properties: {
    repositoryUrl: 'https://dev.azure.com/NoidEnterprises/TeknoFire/_git/TeknoFire'
    branch: 'main'
    stagingEnvironmentPolicy: 'Enabled'
    allowConfigFileUpdates: true
    provider: 'DevOps'
    enterpriseGradeCdnStatus: 'Disabled'
  }
}
