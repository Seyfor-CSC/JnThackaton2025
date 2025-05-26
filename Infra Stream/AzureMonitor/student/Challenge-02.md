# 🖥️ Challenge 02 – VM Insights - Magnified

[< Previous Challenge](./Challenge-01.md) - **[Home](./Readme.md)** - [Next Challenge >](./Challenge-03.md)

# Introduction

After knowing the basics of Log Analytics Workspace and its functionality, basic principles of alerting and logging,
let's dive deeper into one of many solutions that Azure provides - VM Insights.

To accomplish this task, you will need to:
- Have at least 2 VMs with Contributor rights.
- Understand what is behind VM Insights.
- Have basic orientation capabilities in Azure Monitor.
- Investigate and set up some alert rules related to VM Insights.
- Understand metric namespaces and their purpose.

## Tasks
- Enable VM Insights on VM01 (incl. dependencies) and point them into Log Analytics Workspace you created in previous challenge.
- Create Alert rules related to metrics from VM Insights. Check documentation to successfully determine correct thresholds and dimensions.

### Bonus Tasks
- Enable VM Insights on VM02 (incl. dependencies), but do it in a different way than in previous step (modify one of the resources that were created during the process).
- If VM Insights are not fully functional, fix it.
- Enable VM Insights via code (PS CLI, Terraform, or PowerShell).

## Questions to think about
- What happened during the enablement of VM Insights and what resources were created?
- Is it possible now to determine capacity of specific drives within VM and why?

## Success Criteria
- Both VMs have VM Insights enabled.
- There are several alert rules related to VMs metrics.

# Learning Resources

- [Create VMs in Portal](https://learn.microsoft.com/en-us/azure/virtual-machines/windows/quick-create-portal)
- [VM Insights Overview](https://learn.microsoft.com/en-us/azure/azure-monitor/vm/vminsights-overview)
- [Azure Monitor Overview](https://learn.microsoft.com/en-us/azure/azure-monitor/fundamentals/overview)
- [Azure Monitor Agent Overview](https://learn.microsoft.com/en-us/azure/azure-monitor/agents/azure-monitor-agent-overview)
- [Dependency Agent Overview](https://learn.microsoft.com/en-us/azure/azure-monitor/vm/vminsights-dependency-agent)
- [Log Alert Rules Overview](https://learn.microsoft.com/en-us/azure/azure-monitor/alerts/alerts-create-log-alert-rule)
- [Supported Metrics in Azure Monitor](https://learn.microsoft.com/en-us/azure/azure-monitor/reference/metrics-index)

## Answers

The coach need all the secrets.
- If you are a coach, please check the [answers](./coach/02_answers.md) to this challenge.
- If you are a participant, please ask your coach for the answers.