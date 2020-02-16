# Multi-platform vault-k8s image
[![Build Status](https://travis-ci.com/moikot/vault-k8s-image.svg?branch=master)](https://travis-ci.com/moikot/vault-k8s-image)
[![](https://images.microbadger.com/badges/image/moikot/docker-tools.svg)](https://hub.docker.com/r/moikot/vault-k8s/tags "Image Tags")
[![](https://images.microbadger.com/badges/commit/moikot/docker-tools.svg)](https://github.com/moikot/vault-k8s-image/blob/master/Dockerfile "Dockerfile")

A multi-platform Docker image of [hashicorp/vault-k8s](https://github.com/hashicorp/vault-k8s).

## Supported platforms
* linux/amd64
* linux/arm64
* linux/386
* linux/arm/v6

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
