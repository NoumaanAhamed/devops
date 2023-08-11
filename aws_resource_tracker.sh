#!/bin/bash

#########################
# Author: Noumaan
# Date: 11th-Aug
#
# Version: v1
#
# This script will report the AWS resource uasge
#########################

# Set verbose mode
# set -x

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# Function to prettify
print_header() {
    echo "=============================="
    echo "$1"
    echo "=============================="
}

# AWS S3
print_header "AWS S3 - List of Buckets"
aws s3 ls

# AWS EC2
print_header "AWS EC2 - List of Instances"
aws ec2 describe-instances | jq -r '.Reservations[].Instances[] | .InstanceId + " " + .KeyName'

# AWS Lambda
print_header "AWS Lambda - List of Functions"
aws lambda list-functions | jq '.Functions'

# AWS IAM Users
print_header "AWS IAM - List of Users"
aws iam list-users | jq '.Users'
