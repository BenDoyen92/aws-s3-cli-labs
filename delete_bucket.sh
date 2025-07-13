#!/usr/bin/env bash
set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Usage: ./delete_bucket.sh <bucket-name>"
  exit 1
fi

BUCKET_NAME=$1

echo "Emptying bucket..."
aws s3 rm s3://$BUCKET_NAME --recursive

echo "Deleting bucket..."
aws s3api delete-bucket --bucket "$BUCKET_NAME"
