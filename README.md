# Multi-platform vault-k8s image
![CI](https://github.com/moikot/vault-k8s-image/workflows/CI/badge.svg)
[![](https://images.microbadger.com/badges/version/moikot/vault-k8s.svg)](https://microbadger.com/images/moikot/vault-k8s "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/commit/moikot/docker-tools.svg)](https://github.com/moikot/vault-k8s-image/blob/master/Dockerfile "Dockerfile")

A multi-platform Docker image of [hashicorp/vault-k8s](https://github.com/hashicorp/vault-k8s).

## Supported platforms
* linux/amd64
* linux/arm64

## Run

See [hashicorp/vault-k8s](https://hub.docker.com/r/hashicorp/vault-k8s).

For the [Vault helm chart](https://github.com/hashicorp/vault-helm) use:

```yaml
injector:
  image:
    repository: "moikot/vault-k8s"
    tag: "0.2.0"
    pullPolicy: IfNotPresent
```
