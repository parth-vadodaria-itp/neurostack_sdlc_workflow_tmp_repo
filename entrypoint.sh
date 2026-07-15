#!/bin/bash
set -e

if [ -d "migrations" ]; then
    flask db upgrade || echo "WARNING: flask db upgrade failed, continuing anyway..."
else
    flask db init || true
    flask db migrate -m "initial" || true
    flask db upgrade || echo "WARNING: flask db upgrade failed, continuing anyway..."
fi

exec "$@"
