# aws-s3-cli-labs
Bash scripts for AWS S3 labs—install, create, delete, list, upload, sync
# AWS S3 CLI Labs

This repo contains Bash scripts to manage AWS S3 using the AWS CLI.

## Available Scripts
- `install_aws_cli.sh` — installs AWS CLI v2
- `create_bucket.sh`, `delete_bucket.sh`, `list_buckets.sh`
- `list_objects.sh`, `put_object.sh`, `sync_s3.sh`

## Quick Start (Gitpod)
Open this repo in Gitpod and your environment will auto-install AWS CLI and prepare the scripts.

```bash
./scripts/create_bucket.sh my-bucket-123 us-west-2
./scripts/put_object.sh example.txt my-bucket-123
./scripts/list_objects.sh my-bucket-123
