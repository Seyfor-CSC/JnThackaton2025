# Challenge 04 - Scaling plans

## Introduction

In this challenge, you will create and assign a scaling plan for your pooled host pools. The goal is to automate scale-out and scale-in during peak and off-peak hours.

## Learning Objectives

- Simulate the peak and off-peak hours
- Scale-out session hosts when high demand and scale-in when the demand is low
- Lower the cost of your environment

## Success Criteria

1. Plan the scaling plan
2. Create and assign the scaling plan to your pooled host pool
3. Successfully test the scaling

## Environment

Use the current AVD environment that you built in the #1 challenge.

## Deployment

### Task 1 - Plan the scaling
The goal is not to have too many session host running when there is no demand. For example, only 1 session host is running and once the demand is higher, additional session hosts should start. But you can modify this as needed.

### Task 2 - Create, assign and test
Create the scaling plan, assign it to the host pool and simulate new user connections to see, whether the scaling works as expected.

## Verification Checklist

- [ ] Scaling plan is created and assigned
- [ ] Scaling is tested and works as configured

## Resources
- [Azure Virtual Desktop scaling plans](https://learn.microsoft.com/en-us/azure/virtual-desktop/scaling-plan)
- [Create a scaling plan in Azure Virtual Desktop](https://learn.microsoft.com/en-us/azure/virtual-desktop/create-scaling-plan)
- [Best practices for scaling plans](https://learn.microsoft.com/en-us/azure/virtual-desktop/scaling-plan-best-practices)