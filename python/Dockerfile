FROM fedora:34

ARG PYTHON_VERSION=3.10

RUN dnf install -y python${PYTHON_VERSION} python3-pip && \
        dnf clean all && \
        alternatives --install /usr/bin/python python /usr/bin/python${PYTHON_VERSION} 2 && \
        rm -rf /var/cache/dnf

CMD ["/bin/bash"]