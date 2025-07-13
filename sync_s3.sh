#!/usr/bin/env bash
set -euo pipefail

if [ $# -lt 2 ]; then
  echo "Usage: ./sync_s3.sh <local-folder> <bucket-name>"
  exit 1
fi

FOLDER=$1
BUCKET=$2

aws s3 sync "$FOLDER" s3://$BUCKET
