@description('The name of the DNS zone to be created.')
param zoneName string

resource zone 'Microsoft.Network/dnsZones@2018-05-01' = {
  name: zoneName
  location: 'global'
  properties: {
    zoneType: 'Public'
  }
}

