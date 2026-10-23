#!/bin/zsh
set -euo pipefail
cd "${0:A:h}"
export SKIP_DEPLOY="${SKIP_DEPLOY:-1}"
export NO_DEPLOY="${NO_DEPLOY:-1}"
exec /bin/zsh "PodiumAssist/Development/build-app.sh" "$@"
