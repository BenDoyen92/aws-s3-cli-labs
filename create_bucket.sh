#!/usr/bin/env bash
set -euo pipefail

if [ $# -lt 2 ]; then
  echo "Usage: ./create_bucket.sh <bucket-name> <region>"
  exit 1
fi

BUCKET_NAME=$1
REGION=$2

echo "Creating bucket: $BUCKET_NAME in $REGION"
aws s3api create-bucket \
  --bucket "$BUCKET_NAME" \
  --region "$REGION" \
  --create-bucket-configuration LocationConstraint="$REGION"
