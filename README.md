### README for Disable Cortana Script

---

## Disable Cortana Script

This repository contains a PowerShell script designed to disable Cortana on Windows 10 devices. Disabling Cortana can enhance privacy and reduce unnecessary background processes on your system.

### Table of Contents

- [Description](#description)
- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Verification](#verification)
- [Deployment via Workspace ONE UEM](#deployment-via-workspace-one-uem)
- [License](#license)

### Description

The provided PowerShell script modifies the Windows registry to disable Cortana. Specifically, it sets the `AllowCortana` registry value to `0` under `HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search`.

### Prerequisites

- Administrator privileges on the target Windows 10 machine(s).
- PowerShell with execution policy set to allow script execution.

### Usage

#### Running the Script Manually

1. **Download the Script:**
   - Save the script as `DisableCortana.ps1`.

2. **Open PowerShell as Administrator:**
   - Press `Win + X` and select `Windows PowerShell (Admin)`.

3. **Run the Script:**
   - Navigate to the directory where the script is saved.
   - Execute the script using the following command:
     ```powershell
     .\DisableCortana.ps1
     ```

#### Script Content

```powershell
# DisableCortana.ps1

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
```

### Verification

To verify that Cortana has been disabled, you can check the registry setting and observe the behaviour of Cortana.

#### Checking the Registry Setting

1. **Open PowerShell as Administrator:**
   - Press `Win + X` and select `Windows PowerShell (Admin)`.

2. **Run the Verification Command:**
   ```powershell
   $registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search"
   $registryName = "AllowCortana"
   
   if (Test-Path $registryPath) {
       $allowCortana = Get-ItemProperty -Path $registryPath -Name $registryName
       if ($allowCortana.AllowCortana -eq 0) {
           Write-Host "Cortana is disabled."
       } else {
           Write-Host "Cortana is not disabled."
       }
   } else {
       Write-Host "Cortana policy registry key not found."
   }
   ```

### Deployment via Workspace ONE UEM

To deploy this script to multiple devices using Workspace ONE UEM, follow these steps:

1. **Log in to Workspace ONE UEM Console:**
   - Open your browser and navigate to your Workspace ONE UEM console.
   - Log in with your administrator credentials.

2. **Navigate to Scripts Section:**
   - Go to `Resources` > `Scripts`.

3. **Create a New Script:**
   - Click on `Add` to create a new script.
   - Provide the necessary details such as name, description, and select `PowerShell` as the script type.

4. **Enter the Script Content:**
   - In the script editor, enter the PowerShell script content provided above.
   - Alternatively, you can upload the script file if you have saved it locally.

5. **Save the Script:**
   - After entering the script content, click `Save`.

6. **Assign the Script to Devices:**
   - Once the script is saved, navigate to `Assignments`.
   - Click on `Add Assignment` and select the Smart Group or specific devices you want to target.
   - Configure the assignment settings, such as the frequency of script execution (e.g., once, recurring).

7. **Publish the Script:**
   - After configuring the assignments, click `Save & Publish`.
   - This will deploy the script to the assigned devices.

### License

This project is licensed under the MIT License. See the LICENSE file for details.

---

By following this guide, you can effectively disable Cortana on your Windows 10 devices using the provided PowerShell script. If you encounter any issues or have suggestions for improvements, please open an issue or submit a pull request.
