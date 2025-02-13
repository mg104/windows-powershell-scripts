# Script to append a new path to windows PATH variable

# You might at times need to append a new path (where your `app`.exe file is residing)
# to PATH, if you want to use it from the command line without mentioning the full path
# of the windows app

$scope = Read-Host "Enter the scope whose PATH you want to change (e.g.: User, TEMP, SystemRoot; Default is User): "
$appPath = Read-Host "Enter the app's path which you want to append to the PATH varible: "

# Get the current value of the PATH varible
$oldPath = [System.Environment]::GetEnvironmentVariable("Path", "$scope")

# Check if the appPath already exists in PATH
if ($oldPath -like $appPath) {
	Write-Output "$appPath is already in $scope's PATH."
} else {
# Append the app's path to the PATH variable if PATH doesn't contain appPath
	$newPath = "$oldPath;$appPath"
	Write-Output "$appPath has been appended to $scope's PATH variable"
}



