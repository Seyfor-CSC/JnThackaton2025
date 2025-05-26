# Challenge 05 - Insights & Operations Hackathon

## Overview
In this challenge you will configure Insights to monitor the health of your AVD environment. On top of that you will get familiar with some basic AVD operations.

## Learning Objectives

- Configure Insight and monitoring
- Learn what you can monitor with the Insights to get clear infrastructure overview
- Get familiar with some basic AVD operations tasks

## Success Criteria

1. Configure the Insights and monitoring
2. Confirm the Insights are working correctly
3. Successfully perform selected operations tasks

## Environment

Use the current AVD environment that you built in the #1 challenge.

For the Insights and monitoring, there are some pre-deployed resources:

- Log Analytics workspace to save all diagnostics logs **law-avd-test-ne-01**

### Task 1 - AVD Insights Setup

1. Enable diagnostic settings for your AVD environment
2. Configure a Log Analytics workspace for AVD monitoring
3. Enable Azure Monitor for the host pool
4. Create a custom AVD dashboard with key metrics (optional)
5. Set up alerts for critical AVD events (optional)

### Task 2 - Basic AVD Operations
1. Access the AVD management interface in Azure portal
2. Start and stop session hosts
3. Re-configure host pool settings including load balancing algorithm and max session limits
4. Publish a new RemoteApp
5. Implement a drain mode on a session host for maintenance

### Task 3 - User Session Management
1. View active user sessions in your host pool
2. Send a message to all active users
3. Log off an idle user session
4. Shadow a user session (if permissions allow)
5. Troubleshoot a user connection issue using the diagnostics tool

### Task 4 - Performance Monitoring and Analysis
1. Use AVD Insights to identify performance bottlenecks
2. Analyze user connection statistics and failures
3. Monitor resource utilization across session hosts
4. Generate usage reports for capacity planning
5. Use metrics to determine scaling needs

## Completion Criteria
To complete this hackathon, participants should:
- Successfully configure all basic AVD operations
- Demonstrate proper user session management
- Set up a functional AVD Insights monitoring environment
- Analyze performance data and make optimization recommendations
- Present their findings and optimization strategy to the group

## Verification Checklist

- [ ] Insights are configured and AVD environment is monitored
- [ ] All other tasks performed in "best-effort" manner. No specific are required to complete.

## Resources
- [AVD Insights overview](https://docs.microsoft.com/en-us/azure/virtual-desktop/insights)
- [Azure Monitor for AVD](https://docs.microsoft.com/en-us/azure/virtual-desktop/azure-monitor)