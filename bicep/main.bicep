@description('Name of the Static Web App')
param appName string

@description('URL of the Azure Devops Git Repo')
param repositoryUrl string

@description('Which branch of the Azure Devops Git Repo to use')
param repositoryBranch string

@description('Which branch of the Azure Devops Git Repo to use')
param customDomain string

@description('Which branch of the Azure Devops Git Repo to use')
param zoneName string

module staticwebapp 'modules/staticwebapp.bicep' = {
  name: 'staticwebapp'
  params: {
    appName: appName
    repositoryUrl: repositoryUrl
    repositoryBranch: repositoryBranch
    customDomain: customDomain
 }
}

module dnszone 'modules/dnszone.bicep' = {
  name: 'dnszone'
  params: {
    zoneName: zoneName
 }
}

module customdomainforstaticwebapp 'modules/customdomainforstaticwebapp.bicep' = {
  name: 'customdomainforstaticwebapp'
  params: {
    customDomain: customDomain
    appName: appName
 }
}



