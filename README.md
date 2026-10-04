# AWS Elastic Disaster Recovery - Physical Server Recovery

## Project Overview

This project demonstrates the AWS-side infrastructure used to support
an AWS Elastic Disaster Recovery (AWS DRS) architecture for a
physical/on-premises server recovery scenario.

In a real production environment, AWS DRS can protect supported
on-premises physical servers and recover them in AWS.

For our lab environment, we did not have a suitable physical production
server to replicate. Therefore, we implemented the AWS-side recovery
environment and supporting AWS services as a proof of concept.

## Objective

The objectives of this project are:

- Understand AWS Elastic Disaster Recovery
- Create the AWS networking environment
- Configure security and access control
- Launch an EC2 instance
- Configure EBS storage
- Deploy an application using Apache
- Monitor the EC2 instance using CloudWatch

## AWS Services Used

| Service | Purpose |
|---|---|
| AWS Elastic Disaster Recovery | Disaster recovery architecture |
| Amazon VPC | Provides the network |
| Subnet | Provides network segmentation |
| Route Table | Controls network routing |
| Internet Gateway | Provides internet connectivity |
| Security Group | Acts as a virtual firewall |
| IAM / LabRole | Provides AWS permissions |
| Amazon EC2 | Compute environment |
| Amazon EBS | Persistent block storage |
| Amazon CloudWatch | Monitoring and alarms |
| AWS Systems Manager | Browser-based EC2 access |

## Architecture

Production scenario:

Physical Server
       |
       v
   DRS Agent
       |
       v
   AWS DRS
       |
       v
 AWS Recovery Environment
       |
       v
      EC2
       |
       v
      EBS
       |
       v
 Application

## Implementation

We implemented:

1. VPC
2. Subnets
3. Route Table
4. Internet Gateway
5. Security Group
6. IAM/LabRole
7. EC2
8. EBS
9. Apache Web Server
10. CloudWatch Monitoring
11. CloudWatch Alarm
12. Session Manager

## EC2 Application

An Amazon Linux EC2 instance named:

DRS-Recovery-Server

was created.

Apache HTTP Server was installed and configured.

Example application message:

AWS DRS Recovery Server - Application Running Successfully

## IAM

Our AWS Academy environment provided a pre-existing LabRole.

We used the existing LabRole because the lab environment did not
provide permission to create a new IAM role.

## Monitoring

CloudWatch was used to monitor EC2 metrics such as CPU utilization.

A CPU utilization alarm was also configured.

## Scope

### Implemented

- AWS networking
- Security Group
- IAM/LabRole
- EC2
- EBS
- Apache
- CloudWatch
- Session Manager



## Security

No AWS credentials, passwords, private keys, or `.pem` files should
be uploaded to this repository.
