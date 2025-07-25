FROM docker.io/fedora:42

LABEL \
    org.opencontainers.image.title="java-maven" \
    org.opencontainers.image.description="Fedora based Java image with Maven" \
    org.opencontainers.image.source="https://github.com/jhnc-oss/images" \
    org.opencontainers.image.documentation="https://github.com/jhnc-oss/images" \
    org.opencontainers.image.vendor="jhnc-oss" \
    org.opencontainers.image.licenses="MIT"


ARG JAVA_VERSION

COPY ./setup_temurin_repo.sh /tmp/bin/

RUN /tmp/bin/setup_temurin_repo.sh && \
        dnf update -y && \
        dnf install -y temurin-"${JAVA_VERSION}"-jdk git && \
        MAVEN_VERSION="3.9.11" && \
        curl --silent -o maven.tar.gz --output-dir /tmp \
            "https://archive.apache.org/dist/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz" && \
        mkdir /opt/maven && \
        tar xf /tmp/maven.tar.gz -C /opt/maven --strip-components=1 && \
        rm -rf /tmp/* && \
        dnf clean all && \
        rm -rf /var/cache/dnf

ENV PATH=/opt/maven/bin:${PATH}
