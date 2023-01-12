// Creates a resource group

targetScope = 'subscription'

/// Parameters ///

@description('Name of the resource group')
param name string

@description('Location of the resource group')
param location string

@description('Tags to be applied on the resource group')
param tags object = {}

/// Resources ///

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: name
  location: location
  tags: tags
}

/// Outputs ///

output rg_id string = rg.id
output rg_name string = rg.name
