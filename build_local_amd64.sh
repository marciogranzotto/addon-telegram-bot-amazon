cd telegram-bot-amazon && docker build --build-arg BUILD_FROM="ghcr.io/hassio-addons/ubuntu-base/amd64:6.1.3" --build-arg BUILD_ARCH=amd64 --progress plain --no-cache -t telegram-bot-amazon .