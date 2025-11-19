FROM mcr.microsoft.com/devcontainers/base:ubuntu

ENV DEBIAN_FRONTEND=noninteractive

ENV HUGO_VERSION=0.146.0

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        ca-certificates \
        wget \
        tar \
        git \
        bash && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN ARCH=$(dpkg --print-architecture) && \
    case "$ARCH" in \
        amd64) HUGO_ARCH="linux-amd64" ;; \
        arm64) HUGO_ARCH="linux-arm64" ;; \
        *)     HUGO_ARCH="linux-amd64" ;; \
    esac && \
    echo "Installing Hugo $HUGO_VERSION for architecture: $HUGO_ARCH" && \
    wget -qO- \
        "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_${HUGO_ARCH}.tar.gz" \
        | tar xz -C /tmp && \
    mv /tmp/hugo /usr/local/bin/hugo && \
    chmod +x /usr/local/bin/hugo && \
    rm -rf /tmp/*