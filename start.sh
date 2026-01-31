#!/bin/bash

set -e

echo "Container ready. Health check will verify OpenClaw installation."
echo "Use 'docker exec <container> openclaw <command>' to run OpenClaw commands."
echo "To start gateway manually: openclaw gateway --port 18789 --verbose --allow-unconfigured"

tail -f /dev/null
