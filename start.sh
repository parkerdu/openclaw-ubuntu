#!/bin/bash

set -e

while true; do
    echo "Starting OpenClaw Gateway..."
    openclaw gateway --port 18789 --verbose || {
        echo "OpenClaw gateway failed to start, will retry in 5 seconds..."
        sleep 5
    }
done
