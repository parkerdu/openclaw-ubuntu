#!/bin/bash

set -e

# Generate and set gateway token if not exists
if [ -z "$OPENCLAW_GATEWAY_TOKEN" ]; then
    echo "Generating gateway token..."
    export OPENCLAW_GATEWAY_TOKEN=$(openssl rand -hex 32)
    echo "Gateway token: $OPENCLAW_GATEWAY_TOKEN"
fi

while true; do
    echo "Starting OpenClaw Gateway..."
    openclaw gateway --port 18789 --verbose --allow-unconfigured --token "$OPENCLAW_GATEWAY_TOKEN" || {
        echo "OpenClaw gateway failed to start, will retry in 5 seconds..."
        sleep 5
    }
done
