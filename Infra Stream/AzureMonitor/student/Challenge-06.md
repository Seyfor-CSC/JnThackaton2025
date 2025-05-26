# 📦 Challenge 06 – Cool ideas with Container Insights

[< Previous Challenge](./Challenge-05.md) - **[Home](./Readme.md)**

## Introduction

Azure Container Insights is a monitoring tool in Azure Monitor that provides real-time visibility into the performance and health of container workloads running in Azure Kubernetes Service (AKS) and other environments. It offers insights into CPU/memory usage, node/container status, and enables proactive troubleshooting. Benefits include centralized monitoring, automatic scaling support, and integrated alerts for faster issue resolution.

To accomplish this task, you will need to:

- Have general knowledge of Azure Monitor
- Understand the purpose and functionality of Azure Kubernetes Service (AKS)
- Understand the purpose of Container Insights
- Have basic knowledge of Azure Managed Grafana and its functionality
- Have basic knowledge of Managed Prometheus and its functionality

## Tasks

1. Enable Container Insights on AKS
  - Enable Container Insights on AKS and point them into Log Analytics Workspace you created in previous challenge
  - Create Alert rules related to metrics from Container Insights. Check documentation to successfully determine correct thresholds and dimensions

2. Compare Platform metrics and Container Insights metrics
  - Check Azure Monitor and Container Insights metrics and compare them

## Questions to think about

- What happened during the enablement of Container Insights and what resources were created?
- Are there any critical differences between Platform metrics and Container Insights metrics?

## Bonus Tasks

- Use KQL to query Container Logs and visualize it in Azure Dashboards and/or Workbooks

  - The query should retrieve errors related to the AKS cluster and visualize them using a pie chart
  - Hint: Use the `ContainerLogV2` table in Log Analytics Workspace

- Share the query with your colleagues

  Solution:

  ```kql
  let timewindow = 1d;
  ContainerLogV2
  | where LogLevel !in("info","debug") and TimeGenerated >= ago(timewindow)
  | where LogLevel !~ "unknown"
  | project TimeGenerated, ContainerName, LogLevel, LogMessage["msg"]
  | summarize count() by ContainerName
  | render piechart
  ```

## Bonus Questions to think about

- Is it possible to monitor on-premises environment with Azure Managed Grafana?

## Success Criteria

- The AKS cluster has Container Insights enabled
- The alert rules are created and configured correctly
- The KQL query retrieves errors related to the AKS cluster and visualizes them using a pie chart
- The query is shared with your colleagues

## Bonus Success Criteria

- The KQL query is commented, and the logic is explained
- The KQL query is visualized in Azure Dashboards and/or Workbooks

## Learning Resources

- [What is Azure Kubernetes Service (AKS)](https://learn.microsoft.com/en-us/azure/aks/what-is-aks)
- [Azure Monitor features for Kubernetes Monitoring](https://learn.microsoft.com/en-us/azure/azure-monitor/containers/container-insights-overview)
- [Enable Container Insights](https://learn.microsoft.com/en-us/azure/azure-monitor/containers/kubernetes-monitoring-enable)
- [Azure Monitor and Prometheus](https://learn.microsoft.com/en-us/azure/azure-monitor/metrics/prometheus-metrics-overview)
- [Azure Managed Grafana](https://learn.microsoft.com/en-us/azure/managed-grafana/overview)
- [Grafana sources](https://grafana.com/docs/grafana/latest/datasources/)

## Answers

The coach need all the secrets.
- If you are a coach, please check the [answers](./coach/06_answers.md) to this challenge.
- If you are a participant, please ask your coach for the answers.