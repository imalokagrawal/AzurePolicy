$mg = Get-AzureRmManagementGroup -GroupName 12345
$definition = Get-AzureRmPolicyDefinition | Where-Object { $_.Properties.DisplayName -eq 'Demo Allowed locations' }
New-AzureRmPolicyAssignment -Name "demo-allowed-loc" -DisplayName "demo-allowed-loc" -Scope $mg.Id -PolicyDefinition $definition -PolicyParameterObject @{listOfAllowedLocations=@("North Europe")}
