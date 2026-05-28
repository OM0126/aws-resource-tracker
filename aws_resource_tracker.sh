#!/bin/bash

###############################
#Author: om
#Date: 28t-may

#version:v1


## this cript will repot the aws resource usage
##############

set +x
#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM User


# list s3 buckets
echo "print list of s3 buckets"
aws s3 ls > resourceTracker


#lsit EC2 Instances
echo "print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list lambda
echo "print list of lambda function" >> resourceTracker
aws lambda list-functions


#lis IAM users
echo "print list of iam user"
aws iam list-users

