FROM openjdk:8-jdk-alpine

WORKDIR /app

RUN apk add --no-cache git && \
    git clone https://github.com/tongueroo/demo-java.git && \
    cd demo-java && \
    ./mvnw package

FROM alpine:latest

COPY --from=0 /app/demo-java/target/demo-java-1.0-SNAPSHOT.jar /app.jar

CMD ["java", "-jar", "/app.jar"]

FROM tomcat:alpine

COPY demo-java/target/demo-java-1.0-SNAPSHOT.war $CATALINA_HOME/webapps/

CMD ["catalina.sh", "run"]


3. docker-compose.yml файл:

version: "3.7"

services:
  build:
    build: ./build
    image: build
  prod:
    build: ./prod
    image: prod
    ports:
      - "8080:8080"
    depends_on:
      - build