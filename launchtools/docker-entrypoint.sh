#!/bin/bash
set -e

# Fix permissions for .NET build
echo "[Init] Fixing permissions on /SwarmUI"
chown -R swarmui:swarmui /SwarmUI

# Run as the intended user
exec su swarmui -c "bash /SwarmUI/launch-linux.sh"
