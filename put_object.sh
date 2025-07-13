#!/usr/bin/env bash
set -euo pipefail

if [ $# -lt 2 ]; then
  echo "Usage: ./put_object.sh <file-name> <bucket-name>"
  exit 1
fi

FILE=$1
BUCKET=$2

aws s3 cp "$FILE" s3://$BUCKET/
