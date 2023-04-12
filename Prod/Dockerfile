FROM tomcat:alpine

COPY /build/boxfuse-sample-java-war-hello/target/hello-1.0.war $CATALINA_HOME/webapps/

CMD ["catalina.sh", "run"]