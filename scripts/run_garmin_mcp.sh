#!/usr/bin/env bash
# Launches the garmin_mcp server, first materializing OAuth tokens from the
# GARMIN_TOKENS_B64 secret if no token file exists yet in this container.
#
# GARMIN_TOKENS_B64 holds the *contents* of ~/.garminconnect_base64 produced
# by running `garmin-mcp-auth` locally (see README.md "Setup") — a revocable
# ~6-month bearer token, never the athlete's Garmin password. This script
# never receives or handles a password.
set -euo pipefail

TOKEN_DIR="${GARMINTOKENS:-$HOME/.garminconnect}"
TOKEN_FILE="$TOKEN_DIR/garmin_tokens.json"

if [ -n "${GARMIN_TOKENS_B64:-}" ] && [ ! -f "$TOKEN_FILE" ]; then
  mkdir -p "$TOKEN_DIR"
  chmod 700 "$TOKEN_DIR"
  echo "$GARMIN_TOKENS_B64" | base64 -d > "$TOKEN_FILE"
  chmod 600 "$TOKEN_FILE"
  echo "Bootstrapped Garmin OAuth token from GARMIN_TOKENS_B64 into $TOKEN_FILE" >&2
fi

exec uvx --python 3.12 --from git+https://github.com/Taxuspt/garmin_mcp garmin-mcp
