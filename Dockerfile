ARG GO_VERSION=1.12.0
ARG VAULT_K8S_VERSION="@v0.2.0"

FROM --platform=$BUILDPLATFORM golang:${GO_VERSION}-alpine as build-env

LABEL maintainer="sanisimov@moikot.com"

# xx wraps go to automatically configure $GOOS, $GOARCH, and $GOARM
# based on TARGETPLATFORM provided by Docker.
COPY --from=tonistiigi/xx:golang / /

# Compile independent executable using go wrapper from xx:golang
ARG TARGETPLATFORM

RUN apk add --no-cache git \
    \
    # Download as a package
    && export GO111MODULE=on && export CGO_ENABLED=0 \
    && go get -d github.com/hashicorp/vault-k8s@v0.2.0 \
    \
    # Build Vault k8s from source
    && cd /go/pkg/mod/github.com/hashicorp/vault-k8s@v0.2.0 \
    && go build -o /go/bin/vault-k8s .

FROM scratch

COPY --from=build-env /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=build-env /go/bin/vault-k8s /

ENTRYPOINT ["/vault-k8s"]
