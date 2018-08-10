$mg = Get-AzureRmManagementGroup -GroupName 12345
$definition = Get-AzureRmPolicyDefinition | Where-Object { $_.Properties.DisplayName -eq 'Demo Allowed locations' }
New-AzureRmPolicyAssignment -Name "demo-assign-allowed-locations" -DisplayName "demo-assign-allowed-locations" -Scope $mg.Id -PolicyDefinition $definition -PolicyParameterObject @{listOfAllowedLocations=@("North Europe")}