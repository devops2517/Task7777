FROM openjdk:8-jdk-alpine as builder
RUN apt install git
 WORKDIR /build

 RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git \
     && cd boxfuse-sample-java-war-hello \
     && mvn package -DskipTests

 #FROM tomcat:9.0.38-jdk8-openjdk-slim
 #COPY --from=builder /app/boxfuse-sample-java-war-hello/target/hello-1.0.war /usr/local/tomcat/webapps/