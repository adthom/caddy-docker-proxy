#!/bin/bash

set -e

chmod +x artifacts/binaries/linux/amd64/caddy
docker build --platform linux/amd64 -t lucaslorentz/caddy-docker-proxy:ci -f Dockerfile .
docker build --platform linux/amd64 -t lucaslorentz/caddy-docker-proxy:ci-alpine -f Dockerfile-alpine .

docker run --rm --privileged multiarch/qemu-user-static --reset -p yes

chmod +x artifacts/binaries/linux/arm32v6/caddy
docker build --platform linux/arm -t lucaslorentz/caddy-docker-proxy:ci-arm32v6 -f Dockerfile-arm32v6 .
docker build --platform linux/arm -t lucaslorentz/caddy-docker-proxy:ci-alpine-arm32v6 -f Dockerfile-alpine-arm32v6 .
