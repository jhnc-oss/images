FROM docker.io/fedora:38

LABEL \
    org.opencontainers.image.title="python" \
    org.opencontainers.image.description="Fedora based Python image" \
    org.opencontainers.image.source="https://github.com/jhnc-oss/images" \
    org.opencontainers.image.documentation="https://github.com/jhnc-oss/images" \
    org.opencontainers.image.vendor="jhnc-oss" \
    org.opencontainers.image.licenses="MIT"

ARG PYTHON_VERSION=3.10

RUN dnf update -y && \
        dnf install -y python${PYTHON_VERSION} python3-pip && \
        alternatives --install /usr/bin/python python /usr/bin/python${PYTHON_VERSION} 2 && \
        dnf clean all && \
        rm -rf /var/cache/dnf

CMD ["/bin/bash"]
