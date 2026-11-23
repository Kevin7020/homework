#!/usr/bin/env bash
set -euo pipefail

config_file="$(dirname "$0")/service.conf" #The script should look for the file relative to its own location
pwd

if [[ ! -f "$config_file" ]]; then
    printf 'Error: configuration file not found: %s\n' "$config_file" >&2
    exit 1
fi

source "$config_file"

echo "Service: $SERVICE_NAME"
echo "Environment: $ENVIRONMENT"