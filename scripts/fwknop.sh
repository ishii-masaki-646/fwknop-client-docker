#!/bin/sh
REPO_DIR="$(cd "$(dirname "$(readlink -f "$0")")/.." && pwd)"
docker compose -f "$REPO_DIR/docker-compose.yaml" run --rm fwknop "$@"
