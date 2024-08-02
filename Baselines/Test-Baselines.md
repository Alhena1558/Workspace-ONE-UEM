# Testing Baselines within Workspace ONE UEM

## Prerequisites

- Workspace ONE UEM admin access
- Devices enrolled in Workspace ONE UEM
- Baselines already configured and assigned to devices

## Step 1: Verify Baseline Assignment

1. **Log in to Workspace ONE UEM Console**
   - Navigate to the Workspace ONE UEM Console and log in with your admin credentials.

2. **Check Device Assignment**
   - Go to `Devices > List View`.
   - Select a device that should have the baseline applied.
   - Ensure the device details indicate the correct baseline is assigned.

## Step 2: Test Compliance

1. **Perform Compliance Actions**
   - On the selected device, perform actions that might trigger compliance rules. This could include changing security settings, installing/uninstalling applications, or modifying system configurations.

2. **Monitor Compliance Status**
   - In the Workspace ONE UEM Console, go to `Resources > Baselines`.
   - Check the compliance status of the devices. Look for any compliance violations or alerts triggered by the actions performed.

3. **Review Compliance Violations**
   - If any compliance violations are reported, investigate the cause and verify that the baseline settings are enforcing the desired policies.

## Step 3: Generate and Review Reports

1. **Generate Compliance Reports**
   - Navigate to `Reports & Analytics > Reports`.
   - Select a compliance report relevant to your baseline settings.
   - Generate the report to review the compliance status of all devices against the applied baselines.

2. **Analyze Report Data**
   - Review the report data to identify any patterns or recurring issues.
   - Use the report findings to make necessary adjustments to the baseline configuration if needed.
