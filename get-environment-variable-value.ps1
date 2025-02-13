# Script to get the value of any environment variable
# I prepared this mainly for practicing writing Windows Powershell scripts

# Prompt the user to provide the environment variable & scope
$envVar = Read-Host "Enter the Environment Variable whose value you want (e.g.: Path, TEMP, SystemRoot)"
$scope = Read-Host "Enter the scope/privilege level (User, Machine, Process; Default is user)"

# Set scope to user if none provided by the script"s user
if (-not $scope) {$scope = "User"}

# Find the value of "envVar" for "scope"
$envVarValue = [System.Environment]::GetEnvironmentVariable($envVar, $scope)

# Print out the environment variable value for the scope
Write-Output "$envVar ($scope): $envVarValue"

