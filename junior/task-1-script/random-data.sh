#!/usr/bin/env bash
set -euo pipefail

bytes=$(openssl rand 10) # Creates a random string of bytes
bytes_base64=$(base64 <<<"$bytes") # Converts the string in to a base64 encoded string
bytes_count=$(wc -c <<<"$bytes") # Counts the number of bytes using wc (-c specifies count of bytes)
bytes_base64_count=$(wc -c <<<"$bytes_base64") # Counts the number of bytes again but for the based64 encoded string
combined_count=$((bytes_count + bytes_base64_count)) # Adds up the count from the base64 string and the original string

echo "Combined count: $combined_count" # FIX:Removed Bad character separating echo from the string to be printed
echo "Bytes count: $bytes_count"
echo "Bytes base64: $bytes_base64" # FIX:Changed the var name to fix the typo bytes-base64 > bytes_base64
echo "Bytes base64 count: $bytes_base64_count" # FIX:Changed typo found on the command ehho > echo
