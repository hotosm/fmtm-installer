#!/bin/sh

set -u

TEMP_DIR=$(mktemp -d)
cd "${TEMP_DIR}" || exit 1

curl --proto '=https' --tlsv1.2 --silent --show-error --fail \
    --location https://get.fmtm.dev/install.sh --output install.sh 2>&1

chmod +x install.sh
bash install.sh
