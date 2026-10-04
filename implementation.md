# Implementation Steps

## Step 1: VPC

Created a dedicated VPC named DRS-PoC-VPC.

Purpose:
To provide an isolated AWS networking environment.

## Step 2: Subnet

Configured a subnet inside the VPC.

Purpose:
To provide a network segment for AWS resources.

## Step 3: Route Table

Configured routing for the subnet.

A default route was configured through the Internet Gateway.

## Step 4: Internet Gateway

Attached an Internet Gateway to the VPC.

Purpose:
To provide internet connectivity where required.

## Step 5: Security Group

Configured a Security Group for the EC2 instance.

Purpose:
To control network access to the instance.

## Step 6: IAM

Used the pre-existing LabRole provided by the AWS Academy environment.

A new IAM role could not be created because the lab account did not
provide the required IAM permissions.

## Step 7: EC2

Created an Amazon Linux EC2 instance named:

DRS-Recovery-Server

Purpose:
To provide the compute environment for the application.

## Step 8: EBS

Verified the EBS storage attached to the EC2 instance.

Commands used:

lsblk

df -h

## Step 9: Session Manager

Connected to the EC2 instance using AWS Systems Manager Session Manager.

## Step 10: Apache

Installed Apache:

sudo dnf install -y httpd

Started Apache:

sudo systemctl start httpd

Enabled Apache:

sudo systemctl enable httpd

## Step 11: Application

Created a simple web page:

AWS DRS Recovery Server - Application Running Successfully

## Step 12: CloudWatch

Used CloudWatch to view EC2 metrics.

CPUUtilization was monitored.

## Step 13: CloudWatch Alarm

Created a CPU utilization alarm:

Name:
DRS-EC2-High-CPU

Threshold:
70%

Period:
5 minutes