# 🛠️ Challenge 01 – Diagnostics Settings and Logging

[< Previous Challenge](./Challenge-00.md) - **[Home](./Readme.md)** - [Next Challenge >](./Challenge-02.md)

## Introduction

After initial setup of the environment and verification that you fulfill all the prerequisites, you are going to collect data and store them in Log Analytics.
You will also create a few alert rules to cover basics of the environment you are working with.

To accomplish this task, you will need to:
- Be able to create a simple Azure resource via Azure Portal
- Understand general mechanism of alerting and logging in Azure
- Know basic pricing of data ingested and stored in Log Analytics
- Understand basic Log Analytics functions and their purposes
- Be familiar with types of tables in Log Analytics as well as their data retention

## Tasks
- Create Log Analytics Workspace
- Set "Export Activity Logs" from subscription to this workspace
- Create a second Key Vault and enable Diagnostics Settings
- Create Alert rules for both Key Vaults (Log - based on activity - Delete, Metric - based on API results - exclude everything but code 200)
- After 10 minutes, delete one of the Key Vaults

## Questions to think about
- How do you check the costs of ingested data?
- Can we optimize the price of the collected data? How? (6 examples):
    - 2 related to ingest
    - 2 related to retention
    - 2 different target

### Bonus questions to think about
- How many alert rules did you have to create?
- Can you create fewer rules but still cover everything needed?

## Success Criteria
- Created Log Analytics Workspace and all resources from Tasks section ingest data to it
- Alert rules cover Key Vaults
- Price of the Log Analytics data ingest and storage is known to the users

## Learning Resources

- [Log Analytics Workspace Overview](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/log-analytics-workspace-overview)
- [Create New Log Analytics Workspace](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/quick-create-workspace?tabs=azure-portal)
- [General alerting over Azure Key Vault](https://learn.microsoft.com/en-us/azure/key-vault/general/alert)
- [Azure Monitor Overview](https://learn.microsoft.com/en-us/azure/azure-monitor/overview)
- [Azure Monitor Metrics](https://learn.microsoft.com/en-us/azure/azure-monitor/essentials/data-platform-metrics)
- [Azure Monitor Logs](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/data-platform-logs)
- [Azure Monitor Alerts](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/alerts-overview)
- [Suppress Notifications](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/alerts-processing-rules?tabs=portal)

## Answers

The coach need all the secrets.
- If you are a coach, please check the [answers](./coach/01_answers.md) to this challenge.
- If you are a participant, please ask your coach for the answers.