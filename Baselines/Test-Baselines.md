Here's the tidied-up version of your README file, keeping the text unchanged:

# Testing Baselines within Workspace ONE UEM

## Environment Details

- **Workspace ONE UEM Console Version**: 24.2.0.10 (2402)
- **Date of Documentation**: 02/08/2024
- **Document Version**: 1.0

## Creating Baselines in Workspace ONE UEM Console (Version 24.2.0.10)

This section provides a detailed guide on creating baselines within the Workspace ONE UEM Console version 24.2.0.10.

### Prerequisites

- Workspace ONE UEM admin access
- Baseline profiles prepared for deployment

### Step-by-Step Procedure

1. **Log in to Workspace ONE UEM Console**
   - Navigate to the Workspace ONE UEM Console.
   - Enter your admin credentials to log in.

2. **Navigate to Baselines**
   - From the main dashboard, go to the navigation panel on the left.
   - Select `Resources` and then click on `Profiles & Baselines` > `Baselines`.

3. **Create a New Baseline**
   - Click on the `New` button located at the top left corner.
   - Under the Subsection 'Select Baseline Type', select `Use Template` from the menu.
   - Click 'Next' to continue.

4. **General**
   - In the `General` window, enter the following details:
     - **Baseline Name**
     - **Description**
   - Ensure the correct Organisation Group is set for the management of this Baselines profile. 

5. **Choose Baseline**
   - Navigate to the `Choose Baseline` section.
   - Select the `Windows Security Baseline` option as shown in the screenshot below:
     
   <img width="325" alt="image" src="https://github.com/user-attachments/assets/32119c8d-405b-463a-becb-d2d31d66a357">

   - Ensure you select the appropriate version:
     - **Windows Version**: Select `Windows 11`.
     - **Baseline Version**: Select `Version 23H2`.
   - Click `Next` to proceed to the customization step.
  
6. **Customize Baseline Template Settings - Customizing the Account Lockout Duration**
   - Navigate to the 'Customize' Section:
     - After selecting the Windows Security Baseline and clicking `Next`, you will be directed to the 'Customize' section.
   - Locate the Account Lockout Duration Setting:
     - In the 'Customize' section, expand `Computer Configuration` > `Windows Settings` > `Security Settings` > `Account Policies` > `Account Lockout Policy`.
     - Select `Account lockout duration`.
   - Set Account Lockout Duration:
     - Set the `Account lockout duration` to `10` minutes (or any value suitable for your demonstration).
     - Ensure that the `Account lockout duration` is `Enabled`.
   - Save and Proceed:
     - After customizing the setting, click `Next` to proceed to the 'Add Policy' section.

7. **Add Policy**
   - Add any specific policies that are required for your baseline. This may include security settings, compliance rules, etc.
   - Click `Next` once all policies are added.

8. **Review and Save**
   - Review all the settings you have configured.
   - If everything looks correct, click `Save` to create the baseline.
   - Your new baseline will now appear in the list of available baselines.

9. **Assign the Baseline**
   - To assign the newly created baseline to devices:
     - Select the baseline from the list.
     - Click on the `Assign` button.
     - Choose the smart groups or individual devices you want to apply the baseline to.
     - Click `Save` to confirm the assignment.

10. **Publish the Baseline**
   - Once the baseline is assigned, you need to publish it to enforce the policies.
   - Click on the `Publish` button.
   - Confirm the publication in the dialogue that appears.

11. **Monitor Baseline Status**
   - After publishing, monitor the status of the baseline to ensure it is applied correctly.
   - Navigate to `Resources` > `Baselines` to see the status and compliance of the devices.
   - Generate reports as needed to review the compliance status.

By following these steps, you can effectively create, assign, and monitor baselines within Workspace ONE UEM Console version 24.2.0.10.
```
