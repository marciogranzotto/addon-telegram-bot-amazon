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

# Copy root filesystem
COPY rootfs /

# Build arguments
ARG BUILD_DATE
ARG BUILD_REF
ARG BUILD_VERSION

# Labels
LABEL \
    io.hass.name="Telegram Bot Amazon" \
    io.hass.description="A Telegram bot that, if made admin of a group, will delete any message containing an Amazon link and re-post it tagged with the specified affiliate tag.² is an open source modular smart mirror platform." \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="Marcio Granzotto <oscensores@gmail.com>" \
    org.opencontainers.image.title="Telegram Bot Amazon" \
    org.opencontainers.image.description="A Telegram bot that, if made admin of a group, will delete any message containing an Amazon link and re-post it tagged with the specified affiliate tag.² is an open source modular smart mirror platform." \
    org.opencontainers.image.vendor="Marcio Granzotto" \
    org.opencontainers.image.authors="Marcio Granzotto <oscensores@gmail.com>" \
    org.opencontainers.image.licenses="GNUv3" \
    org.opencontainers.image.source="https://github.com/marciogranzotto/addon-telegram-bot-amazon" \
    org.opencontainers.image.documentation="https://github.com/marciogranzotto/addon-telegram-bot-amazon/blob/master/README.md" \
    org.opencontainers.image.created=${BUILD_DATE} \
    org.opencontainers.image.revision=${BUILD_REF} \
    org.opencontainers.image.version=${BUILD_VERSION}