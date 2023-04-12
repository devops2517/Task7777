FROM maven:3.6.3-jdk-11 AS builder

WORKDIR /build

RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git \
    && cd boxfuse-sample-java-war-hello \
    && mvn package -DskipTests
