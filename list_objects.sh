#!/usr/bin/env bash
set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Usage: ./list_objects.sh <bucket-name>"
  exit 1
fi

BUCKET_NAME=$1

aws s3 ls s3://$BUCKET_NAME
