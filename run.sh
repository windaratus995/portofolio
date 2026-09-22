#!/usr/bin/env bash

PORT="8000"
HOST="0.0.0.0"

printf '\n=== Portfolio Server ===\n'
printf 'Starting server on http://localhost:%s\n' "$PORT"

if [ -n "$CODESPACE_NAME" ] && [ -n "$GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN" ]; then
  printf 'Codespaces URL: https://%s-%s.%s\n' "$CODESPACE_NAME" "$PORT" "$GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN"
fi

printf '\nPress Ctrl+C to stop\n\n'
python3 -m http.server "$PORT" --bind "$HOST"
