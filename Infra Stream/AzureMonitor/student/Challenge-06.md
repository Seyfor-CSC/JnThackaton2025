# 🔍 Challenge 06 – Mr.Kusto the investigator in action

[< Previous Challenge](./Challenge-05.md) - **[Home](./Readme.md)** 

## Introduction
Kusto Query Language (KQL) is a powerful, read-only query language developed by Microsoft for efficiently querying and analyzing large datasets, primarily within Azure services like Azure Data Explorer, Azure Monitor, and Microsoft Sentinel. It enables users to explore, filter, and visualize data in real time, making it ideal for log analytics, telemetry, and security insights without modifying the underlying data. KQL's SQL-like syntax and rich set of functions make it accessible for IT professionals, security analysts, and data enthusiasts to gain meaningful insights quickly and safely.

In this challenge, you will learn how to use KQL to query and analyze data from Azure Monitor and other Azure services. You will also learn how to visualize the results of your queries using Azure Dashboards and Workbooks.

To accomplish this task, you will need to:
- Understand the basics of KQL syntax and functions
- Be familiar with Azure Monitor and its data sources
- Be able to visualize KQL query results using Azure Dashboards and Workbooks
- Understand how to use KQL to filter and analyze data from Azure Monitor and other Azure services

## Tasks
1. Using KQL, create a query that retrieves all your Azure Activities across the Azure environment and visualize the results using a pie chart:
  - Limit the query for last 24 hours
  - Use AzureActivity table
  - The pie chart should show the number of events per action (Hint: `Authorization_d['action']`)

2. For task 1, create an alert rule that triggers when the number of SPECIFIC failed actions exceeds a certain threshold (e.g., 10 failures in 1 hour):
  - Before creating, update the query (one line is in vain. Which one?)
  - Update Alert rule (or create a new one) based on modifications in Task 2

3. All the queries (if you are creative and want to use more than one) share with your colleagues

## Questions to think about
- What types of tables are available in Log Analytics Workspace?
- What are their pros and cons?

## Bonus Tasks
- Check out the executed queries (from all colleagues without asking them) and see if you can find anything interesting
- Discover the possibility of importing data from external sources into Log Analytics Workspace

## Bonus Questions to think about
- What is the price difference between log alert rules and metric alert rules?
- From Log Analytics Workspace, you can delete specific data. How do you do that?
- How would you export data from Log Analytics Workspace to another Azure service (e.g., Azure Blob Storage)?

## Success Criteria
- The KQL query retrieves all your actions across the Azure environment and visualizes the results using a pie chart
- The alert rule triggers when the number of failed actions exceeds a certain threshold
- The queries are shared with your colleagues

## Bonus Success Criteria
- The KQL query is commented, and the logic is explained

## Learning Resources
- [KQL Syntax Reference](https://learn.microsoft.com/en-us/sharepoint/dev/general-development/keyword-query-language-kql-syntax-reference)
- [KQL Functions and Operators](https://learn.microsoft.com/en-us/azure/data-explorer/kusto/query/functions/)
- [KQL Query Packs](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/query-packs)
- [Delete Data API](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/delete-log-data)
- [mv-expand Operator](https://learn.microsoft.com/en-us/kusto/query/mv-expand-operator?view=microsoft-fabric)
- [Data Export](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/logs-data-export?tabs=portal)
- [Analyze data from External Sources](https://microsoft.github.io/AzureTipsAndTricks/blog/tip205.html#_3-load-the-azure-storage-diagnostic-logs-into-log-analytics)

## Answers

The coach know all the secrets.
- If you are a coach, please check the [answers](./coach/04_answers.md) to this challenge.
- If you are a participant, please ask your coach for the answers.