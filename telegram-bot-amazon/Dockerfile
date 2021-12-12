ARG BUILD_FROM
# hadolint ignore=DL3006
FROM $BUILD_FROM

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
ENV LANG C.UTF-8

COPY app /app
WORKDIR /app

RUN \
    URL="http://archive.ubuntu.com/ubuntu/" \
    && if [ "${BUILD_ARCH}" = "aarch64" ]; then \
        URL="http://ports.ubuntu.com/ubuntu-ports/"; \
    fi \
    && echo "deb ${URL} bionic universe" \
        > /etc/apt/sources.list.d/bionic-universe.list \
    \
    && echo "deb ${URL} bionic main" \
        > /etc/apt/sources.list.d/bionic-main.list \
    \
    && curl -sL "https://deb.nodesource.com/setup_15.x" | bash - \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        nodejs \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && npm i --only=prod

# COPY --from=build /app /app

# Copy root filesystem
COPY rootfs /

# USER node