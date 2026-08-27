#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DIST_DIR="$ROOT_DIR/apps/web/dist"
OUT_DIR="$ROOT_DIR/reports/working/visual-qa"
PROFILE_DIR="$(mktemp -d)"

mkdir -p "$OUT_DIR"

python3 -m http.server 8099 --bind 127.0.0.1 --directory "$DIST_DIR" > "$OUT_DIR/http-server.log" 2>&1 &
SERVER_PID="$!"
trap 'kill "$SERVER_PID" 2>/dev/null || true; rm -rf "$PROFILE_DIR"' EXIT

for _ in {1..30}; do
  if curl -fsS "http://127.0.0.1:8099/" > /dev/null; then
    break
  fi
  sleep 0.2
done

google-chrome --headless=new --no-sandbox --disable-gpu --user-data-dir="$PROFILE_DIR/375" --window-size=375,900 --screenshot="$OUT_DIR/home-375.png" "http://127.0.0.1:8099/?v=$(date +%s)"
google-chrome --headless=new --no-sandbox --disable-gpu --user-data-dir="$PROFILE_DIR/1440" --window-size=1440,1100 --screenshot="$OUT_DIR/home-1440.png" "http://127.0.0.1:8099/?v=$(date +%s)"

test -s "$OUT_DIR/home-375.png"
test -s "$OUT_DIR/home-1440.png"

echo "$OUT_DIR/home-375.png"
echo "$OUT_DIR/home-1440.png"
