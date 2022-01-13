FROM fedora:34

ARG PYTHON_VERSION=3.10

RUN dnf install -y python${PYTHON_VERSION} python3-pip && \
        dnf clean all && \
        rm -rf /var/cache/dnf

CMD ["/bin/bash"]