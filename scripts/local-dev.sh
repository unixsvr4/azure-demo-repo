#!/usr/bin/env bash
set -euo pipefail
echo "Run the demo app locally"
python -m uvicorn apps.demo-service.src.main:app --reload --port 8080
