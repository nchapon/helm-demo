#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

rm -rf bin/amd64/webgo
go clean
GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o bin/amd64/webgo
