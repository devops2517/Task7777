FROM tomcat:9-jre8-alpine  AS builder
WORKDIR /build
COPY --from=builder  /build/boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/local/tomcat/webapps/hello.war