# Testing Baselines within Workspace ONE UEM

## Prerequisites

- Workspace ONE UEM admin access
- Devices enrolled in Workspace ONE UEM
- Baselines already configured and assigned to devices

## Environment Details

- **Workspace ONE UEM Console Version**: 24.2.0.10 (2402)
- **Date of Documentation**: 02/08/2024
- **Document Version**: 1.0
  

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
