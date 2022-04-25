FROM docker.io/fedora:34

LABEL \
    org.opencontainers.image.title="java-maven" \
    org.opencontainers.image.description="Fedora based Java image with Maven" \
    org.opencontainers.image.source="https://github.com/jhnc-oss/images" \
    org.opencontainers.image.documentation="https://github.com/jhnc-oss/images" \
    org.opencontainers.image.vendor="jhnc-oss" \
    org.opencontainers.image.licenses="MIT"


ARG JAVA_VERSION=11

RUN dnf install -y java-${JAVA_VERSION}-openjdk-devel git && \
        MAVEN_VERSIN="3.8.5" && \
        curl --silent -o maven.tar.gz --output-dir /tmp \
            https://dlcdn.apache.org/maven/maven-3/${MAVEN_VERSIN}/binaries/apache-maven-${MAVEN_VERSIN}-bin.tar.gz && \
        mkdir /opt/maven && \
        tar xf /tmp/maven.tar.gz -C /opt/maven --strip-components=1 && \
        rm -rf /tmp/* && \
        dnf clean all && \
        rm -rf /var/cache/dnf

ENV PATH=/opt/maven/bin:${PATH}