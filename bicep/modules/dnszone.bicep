@description('The name of the DNS zone to be created.')
param zoneName string

@description('Sitename to use for the CNAME')
param siteName string

@description('Sitename to use for the CNAME')
param staticWebAppDefaultHostName string

resource zone 'Microsoft.Network/dnsZones@2018-05-01' = {
  name: zoneName
  location: 'global'
  properties: {
    zoneType: 'Public'
  }
}

resource cname 'Microsoft.Network/dnszones/CNAME@2018-05-01' = {
  parent: zone
  name: siteName
  properties: {
    TTL: 3600
    CNAMERecord: {
      cname: staticWebAppDefaultHostName
    }
    targetResource: {}
  }
}
