FROM debian:bookworm-slim

LABEL org.opencontainers.image.source=https://github.com/ishii-masaki-646/fwknop-client-docker

RUN apt-get update \
    && apt-get install -y --no-install-recommends fwknop-client wget ca-certificates \
    && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
