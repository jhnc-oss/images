FROM fedora:34

LABEL \
    org.opencontainers.image.title="python" \
    org.opencontainers.image.description="Fedora based Python image" \
    org.opencontainers.image.source="https://github.com/jhnc-oss/images" \
    org.opencontainers.image.documentation="https://github.com/jhnc-oss/images" \
    org.opencontainers.image.vendor="jhnc-oss" \
    org.opencontainers.image.licenses="MIT"

ARG PYTHON_VERSION=3.10

RUN dnf install -y python${PYTHON_VERSION} python3-pip && \
        dnf clean all && \
        alternatives --install /usr/bin/python python /usr/bin/python${PYTHON_VERSION} 2 && \
        rm -rf /var/cache/dnf

CMD ["/bin/bash"]