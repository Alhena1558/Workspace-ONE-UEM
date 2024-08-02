# Define the registry path and value
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search"
$registryName = "AllowCortana"
$registryValue = 0

# Create the registry path if it does not exist
if (-not (Test-Path $registryPath)) {
    New-Item -Path $registryPath -Force
}

# Set the registry value to disable Cortana
Set-ItemProperty -Path $registryPath -Name $registryName -Value $registryValue

# Output the result
if ((Get-ItemProperty -Path $registryPath -Name $registryName).$registryName -eq $registryValue) {
    Write-Host "Cortana has been disabled successfully."
} else {
    Write-Host "Failed to disable Cortana."
}
