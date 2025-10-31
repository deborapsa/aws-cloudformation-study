#!/usr/bin/env bash
STACK_NAME="cf-sample-s3"
aws cloudformation delete-stack --stack-name "$STACK_NAME"
