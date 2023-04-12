FROM tomcat:9-jre8-alpine  AS builder
WORKDIR /build
COPY --from=builder /app/target/hello-1.0.war /usr/local/tomcat/webapps/hello.war