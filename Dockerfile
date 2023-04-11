FROM openjdk:8-jdk-alpine as builder
 WORKDIR /app
 RUN apk add --update git
 RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
 WORKDIR /app/boxfuse-sample-java-war-hello
 RUN ./mvn package

 FROM tomcat:9.0.38-jdk8-openjdk-slim
 COPY --from=builder /app/boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/local/tomcat/webapps/