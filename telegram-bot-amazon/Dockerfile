ARG BUILD_FROM=ghcr.io/hassio-addons/base/amd64:11.0.0
# hadolint ignore=DL3006
FROM ${BUILD_FROM}

ENV LANG C.UTF-8

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

COPY app /app
WORKDIR /app

# hadolint ignore=DL3018
RUN \
    apk add --no-cache nodejs npm \
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