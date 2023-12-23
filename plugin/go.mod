module github.com/lucaslorentz/caddy-docker-proxy/plugin

go 1.16

require (
	github.com/caddyserver/caddy/v2 v2.4.6
	github.com/containerd/containerd v1.6.26 // indirect
	github.com/docker/docker v20.10.10+incompatible
	github.com/moby/term v0.0.0-20210619224110-3f7ff695adc6 // indirect
	github.com/stretchr/testify v1.8.4
	go.uber.org/zap v1.19.0
)
