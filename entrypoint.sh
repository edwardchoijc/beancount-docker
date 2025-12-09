#!/usr/bin/env sh
set -e

BEAN_FILE=${BEAN_FILE:-/ledger/main_home.bean}
PORT=${PORT:-5000}
HOST=${HOST:-0.0.0.0}

echo "Starting Fava"
echo "  Ledger: ${BEAN_FILE}"
echo "  Host:   ${HOST}"
echo "  Port:   ${PORT}"

exec fava -H "${HOST}" -p "${PORT}" "${BEAN_FILE}"
