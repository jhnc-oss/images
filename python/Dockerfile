FROM docker.io/fedora:42

LABEL \
    org.opencontainers.image.title="python" \
    org.opencontainers.image.description="Fedora based Python image" \
    org.opencontainers.image.source="https://github.com/jhnc-oss/images" \
    org.opencontainers.image.documentation="https://github.com/jhnc-oss/images" \
    org.opencontainers.image.vendor="jhnc-oss" \
    org.opencontainers.image.licenses="MIT"

ARG PYTHON_VERSION

RUN dnf update -y && \
        dnf install -y python${PYTHON_VERSION} && \
        alternatives --install /usr/bin/python python /usr/bin/python${PYTHON_VERSION} 2 && \
        python${PYTHON_VERSION} -m ensurepip --default-pip && \
        dnf clean all && \
        rm -rf /var/cache/dnf

CMD ["/bin/bash"]
