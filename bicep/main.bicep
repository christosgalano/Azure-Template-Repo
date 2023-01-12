/// Parameters ///

@description('Azure region used for the deployment of all resources')
param location string

@description('Abbreviation fo the location')
param location_abbreviation string

@description('Name of the workload that will be deployed')
param workload string

@description('Name of the workloads environment')
param environment string

/// Variables ///

var suffix = toLower('${workload}-${environment}-${location_abbreviation}')
var suffix_clean = replace(suffix, '-', '')
var unique_part = substring(uniqueString(subscription().id), 0, 5)

/// Modules ///

/// Outputs ///
