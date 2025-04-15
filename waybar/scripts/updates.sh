#!/bin/bash

# Check for available updates
updates=$(checkupdates 2>/dev/null)

# If no updates are available, return an empty JSON
if [[ -z "$updates" ]]; then
  echo '{"updates": []}' > updates.json
  echo "No updates available. JSON saved as updates.json"
  exit 0
fi

# Convert the updates to JSON format
updates_json=$(echo "$updates" | awk '{print "{\"package\": \""$1"\", \"version\": \""$2"\"},"}' | sed '$ s/,$//')

# Create the final JSON structure
echo "{ \"updates\": [ $updates_json ] }" > updates.json

# Output success message
echo "Updates saved to updates.json"

