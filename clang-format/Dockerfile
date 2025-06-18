FROM docker.io/fedora:42

LABEL \
    org.opencontainers.image.title="clang-format" \
    org.opencontainers.image.description="Fedora based clang-format image" \
    org.opencontainers.image.source="https://github.com/jhnc-oss/images" \
    org.opencontainers.image.documentation="https://github.com/jhnc-oss/images" \
    org.opencontainers.image.vendor="jhnc-oss" \
    org.opencontainers.image.licenses="MIT"

ARG CLANGFORMAT_VERSION

COPY run-clang-format.sh /usr/bin/

RUN dnf update -y && \
        dnf install -y git fd-find python3-pip && \
        pip install --no-cache-dir -U clang-format=="${CLANGFORMAT_VERSION}" && \
        dnf clean all && \
        rm -rf /var/cache/dnf

CMD ["/bin/bash"]
