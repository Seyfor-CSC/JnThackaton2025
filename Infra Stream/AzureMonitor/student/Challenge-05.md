# 📈 Challenge 05 – Visualization without borders

[< Previous Challenge](./Challenge-04.md) - **[Home](./Readme.md)** - [Next Challenge >](./Challenge-06.md)

## Introduction
After you've learned the basics of Log Analytics, Azure Monitor, and how VM Insights works, it's time to explore data visualization. Data visualization is essential for extracting actionable insights from cloud data. Azure offers a suite of powerful visualization tools, such as Azure Dashboards and Azure Workbooks, that help users analyze, monitor, and present data effectively. This challenge will guide you through using Azure's native visualization capabilities to create dashboards and reports, combining data from multiple sources and tailoring visualizations for different audiences.

To accomplish this task, you will need to:
- Understand the basics of Azure Dashboards and Workbooks
- Be able to visualize data using Azure Dashboards and Workbooks
- Be able to create and customize visualizations using Azure Dashboards and Workbooks
- Understand how to share and collaborate on Azure Dashboards and Workbooks with other users

## Tasks
1. Build an Azure Dashboard
   - Provides a "single pane of glass" overview of a chosen Azure service (e.g., a virtual machine, KeyVault, etc.)
   - Include at least three different visualization tiles (e.g., Description, Metrics, etc.)

2. Pin to the dashboard two KQL queries that you create in the Log Analytics workspace
    - The first query should find billable logs and output a pie chart
    - The second query should find non-billable logs and output a pie chart

        ```
        Usage
        | where IsBillable == true
        | project DataType, Quantity
        | render piechart
        ```

        ```
        Usage
        | where IsBillable == false
        | project DataType, Quantity
        | render piechart
        ```

3. Build an Azure Workbook
    - Create tabs (Overview, LA, VM, SA, KV, and WEBAPPS)
    - Create a time picker that you will use throughout the workbook, and fill every tab with important metrics that you think are valuable to see (the time picker should control all time in metrics charts)
    - Pin the workbook to the dashboard

4. Create a Group of items in the VM tab
    - Create a Group of items for VM and move all the metrics charts into the group
      - The VM group should be available in the VM tab
    - Create a resources picker for VMs, and edit all charts so that you choose VM in the resource picker, and all charts show you valid information for the picked VM

5. Add KQL queries to the workbook
    - Add KQL queries to the workbook that you created in the previous challenge
    - Add coloring to the output of the KQL query below
      - Red for DELETE
      - Blue for WRITE

        ```
        AzureActivity
        | where ActivityStatusValue == 'Accept'
        or ActivityStatusValue == "Failure"
        or ActivityStatusValue == "Start"
        or ActivityStatusValue == "Success"
        | project TimeGenerated, Caller, Level, OperationNameValue, ActivityStatusValue, ResourceId = _ResourceId
        ```

## Bonus Tasks
- Add application map to and 2 important charts to dashboard or workbook

## Bonus Questions to think about
- What is the application map in Application Insights, and how could it help you?

## Success Criteria
1. Build an Azure Dashboard
   - Dashboard presents a clear, actionable overview with multiple visualization types
   - Dashboard is shared with at least one other user using Azure RBAC

2. Pin to the dashboard two KQL queries that you create in the Log Analytics workspace
   - The KQL queries are correctly configured to show billable and non-billable logs in pie chart format
   - The KQL queries are pinned to the dashboard

3. Build an Azure Workbook
   - The workbook contains at least 6 tabs, each with relevant metrics
   - A global Time Picker is created and functions correctly across all tabs
   - The VM tab includes a group for items, a resources picker for VMs, and charts that regenerate based on the selected VM

4. Create a Group of items in the VM tab
    - The group of VMs is created
    - The VM group of items organizes the metrics charts
      - The group is available in the VM tab
    - A resources picker for VMs is created, and all charts update correctly based on the selected VM

5. Add KQL queries to the workbook
   - KQL queries are added to the workbook and display relevant data
   - The output of the KQL queries is color-coded based on the specified criteria (Red for DELETE, Blue for WRITE)

## Bonus Success Criteria
- The application map is created and visualizes the dependencies between different components of the application.

## Learning Resources
- [Azure Monitor Dashboard](https://learn.microsoft.com/en-us/azure/azure-portal/azure-portal-dashboards)
- [Azure Monitor Dashboard - How to share](https://learn.microsoft.com/en-us/azure/azure-portal/azure-portal-dashboard-share-access)
- [Azure Monitor Workbooks Overview](https://learn.microsoft.com/en-us/azure/azure-monitor/visualize/workbooks-overview)
- [Create or edit an Azure Workbook](https://learn.microsoft.com/en-us/azure/azure-monitor/visualize/workbooks-create-workbook)