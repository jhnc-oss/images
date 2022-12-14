FROM docker.io/fedora:36

LABEL \
    org.opencontainers.image.title="shellcheck" \
    org.opencontainers.image.description="Fedora based ShellCheck image" \
    org.opencontainers.image.source="https://github.com/jhnc-oss/images" \
    org.opencontainers.image.documentation="https://github.com/jhnc-oss/images" \
    org.opencontainers.image.vendor="jhnc-oss" \
    org.opencontainers.image.licenses="MIT"

ARG SHELLCHECK_VERSION=0.9.0

RUN dnf install -y findutils xz && \
        curl -L https://github.com/koalaman/shellcheck/releases/download/v${SHELLCHECK_VERSION}/shellcheck-v${SHELLCHECK_VERSION}.linux.x86_64.tar.xz -o shellcheck.tar.xz && \
        tar -xf shellcheck.tar.xz && \
        mv "shellcheck-v${SHELLCHECK_VERSION}/shellcheck" /bin/ && \
        rm -rf shellcheck.tar.xz shellcheck-v* && \
        dnf clean all && \
        rm -rf /var/cache/dnf

CMD ["/bin/bash"]
