#!/bin/bash

echo "Starting KEPCO Power Planner add-on"

# Read configuration
RSA_USER_ID=$(jq --raw-output '.RSA_USER_ID' /data/options.json)
RSA_USER_PWD=$(jq --raw-output '.RSA_USER_PWD' /data/options.json)
UPDATE_INTERVAL_MINUTES=$(jq --raw-output '.update_interval' /data/options.json)

# Export credentials for the python script
export RSA_USER_ID
export RSA_USER_PWD

# Convert interval to seconds
UPDATE_INTERVAL_SECONDS=$((UPDATE_INTERVAL_MINUTES * 60))

# Main loop
while true; do
  echo "Running KEPCO scrape job..."
  python3 /app/main.py

  echo "Next run in ${UPDATE_INTERVAL_MINUTES} minutes."
  sleep ${UPDATE_INTERVAL_SECONDS}
done
