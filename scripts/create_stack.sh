#!/usr/bin/env bash
STACK_NAME="cf-sample-s3"
TEMPLATE_FILE="TEMPLATE-examples/s3-bucket.yaml"

aws cloudformation create-stack   --stack-name "$STACK_NAME"   --template-body file://$TEMPLATE_FILE   --capabilities CAPABILITY_NAMED_IAM
