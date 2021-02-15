#!/bin/bash

set -e

docker build --platform windows/amd64 -t lucaslorentz/caddy-docker-proxy:ci-nanoserver-1803 -f Dockerfile-nanoserver-1803 .
docker build --platform windows/amd64 -t lucaslorentz/caddy-docker-proxy:ci-nanoserver-1809 -f Dockerfile-nanoserver-1809 .
