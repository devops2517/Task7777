FROM openjdk:8-jdk-alpine

WORKDIR /app

RUN apk add --no-cache git && \
    git clone https://github.com/tongueroo/demo-java.git && \
    cd demo-java && \
    ./mvnw package

FROM alpine:latest

COPY --from=0 /app/demo-java/target/demo-java-1.0-SNAPSHOT.jar /app.jar

CMD ["java", "-jar", "/app.jar"]