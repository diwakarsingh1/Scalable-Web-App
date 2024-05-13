#!/bin/bash

# Directory to watch
WATCH_DIR="/root/kubernetes/scalable-webapp/project-code"

echo "Watching directory: $WATCH_DIR"

# Monitor for changes in the directory
while inotifywait -r -e modify,create,delete,move "$WATCH_DIR"; do
    echo "Changes detected in $WATCH_DIR"
    # Add your actions here when changes occur
    # For example, you can trigger your Docker build and push script
    # You can also add a delay to prevent immediate execution
    sleep 5  # Adjust the delay time as needed
    ./PullImage
done

