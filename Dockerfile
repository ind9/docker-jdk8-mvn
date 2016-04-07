FROM anapsix/alpine-java:jdk8

MAINTAINER Ashwanth Kumar

ENV JAVA_HOME=/opt/jdk  \
    MVN_VERSION=3.3.9

RUN apk --update add unzip git tar zip curl \
    && curl -sSL "http://mirror.fibergrid.in/apache/maven/maven-3/${MVN_VERSION}/binaries/apache-maven-${MVN_VERSION}-bin.tar.gz" | tar -xzf - -C /opt/  \
    && mv /opt/apache-maven* /opt/maven \
    && ln -s /opt/maven/bin/mvn /usr/bin/mvn  \
    && rm -rf /var/cache/apk/* /tmp/*
