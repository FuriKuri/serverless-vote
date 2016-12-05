#!/bin/bash

set -e

export AWS_DEFAULT_REGION=eu-central-1

STACKNAME=serverless-vote

if ! aws cloudformation describe-stacks --stack-name ${STACKNAME} > /dev/null; then
    aws cloudformation create-stack --capabilities CAPABILITY_IAM --stack-name ${STACKNAME} --template-body file://cfn.yml \
        --parameters ParameterKey=TableName,ParameterValue=VoteTable \
        ParameterKey=StreamName,ParameterValue=VoteStream
else
    aws cloudformation update-stack --capabilities CAPABILITY_IAM --stack-name ${STACKNAME} --template-body file://cfn.yml \
        --parameters ParameterKey=TableName,ParameterValue=VoteTable \
        ParameterKey=StreamName,ParameterValue=VoteStream \
        || echo "No Update"
fi

cfn-tail ${STACKNAME}

aws cloudformation describe-stacks --stack-name ${STACKNAME}