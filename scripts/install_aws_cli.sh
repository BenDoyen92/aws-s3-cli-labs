#!/usr/bin/env bash
set -euo pipefail

if ! command -v aws &>/dev/null; then
  echo " Installing AWS CLI v2..."
  sudo apt-get update
  sudo apt-get install -y unzip curl
  curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
  unzip awscliv2.zip
  sudo ./aws/install
  rm -rf awscliv2.zip aws
  echo " AWS CLI installed"
else
  echo " AWS CLI already installed"
fi
