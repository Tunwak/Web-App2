#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"
PORT=${PORT:-8080}
HOST=${HOST:-0.0.0.0}
php -S ${HOST}:${PORT} -t "$(pwd)" "router.php"
